package dao;

import model.User;

import java.util.List;

public interface IUserDao {
    List<User> findAll();

    void save(User user);

    User findById(int id);

    void update(User user);

    void delete(int id);
}
