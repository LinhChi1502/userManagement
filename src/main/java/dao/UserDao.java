package dao;

import model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao implements IUserDao{

    Connection connection = DBConnection.getConnection();
    private static final String SELECT_ALL_USERS = "select * from users";
    private static final String INSERT_INTO_USERS = "{call insertCustomer(?, ?, ?)}";
    private static final String SELECT_USER_BY_ID = "{call find_user_by_id(?)}";
    private static final String UPDATE_USER = "update users set name = ?, email = ?, country = ? where id = ?";
    private static final String DELETE_USER_BY_ID = "delete from users where id = ?";

    @Override
    public List<User> findAll() {
        List<User> users = new ArrayList<>();
        try {
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(SELECT_ALL_USERS);
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String email = rs.getString(3);
                String country = rs.getString(4);
                User user = new User(id, name, email, country);
                users.add(user);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    @Override
    public void save(User user) {
        try {
            CallableStatement callableStatement = connection.prepareCall(INSERT_INTO_USERS);

            callableStatement.setString(1, user.getName());
            callableStatement.setString(2, user.getEmail());
            callableStatement.setString(3, user.getCountry());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public User findById(int id) {
        User user = null;
        try {
            CallableStatement callableStatement = connection.prepareCall(SELECT_USER_BY_ID);
            callableStatement.setInt(1,id);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                user = new User(id, name, email, country);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public void update(User user) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            preparedStatement.setInt(4, user.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USER_BY_ID);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
