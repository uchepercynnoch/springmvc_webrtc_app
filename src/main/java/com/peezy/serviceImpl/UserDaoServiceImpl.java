package com.peezy.serviceImpl;

import com.peezy.dao.UserDao;
import com.peezy.entity.Customer;
import com.peezy.service.UserDaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserDaoServiceImpl implements UserDaoService {
    private UserDao userDao;
    private PasswordEncoder encoder;

    @Autowired
    public void setEncoder(PasswordEncoder encoder) {
        this.encoder = encoder;
    }

    @Autowired
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public Customer FIND_USERS_BY_NAME(String username) {
        return userDao.FIND_USERS_BY_NAME(username);
    }

    public Customer FIND_USERS_BY_ID(Integer id) {
        return userDao.FIND_USERS_BY_ID(id);
    }

    public void CREATE_USERS(Customer customer) {
        customer.setUserPassword(encoder.encode(customer.getUserPassword()));
        customer.setConfirmPassword(encoder.encode(customer.getConfirmPassword()));
        userDao.CREATE_USERS(customer);
    }

    public void DELETE_USERS(Customer customer) {
        userDao.DELETE_USERS(customer);
    }

    public List<String> LIST_ROLES(Customer users) {
        return userDao.LIST_ROLES(users);
    }

    public List<Customer> USERS_LIST(Customer users) {
        return null;
    }

    public List<Customer> USERS() {
        return userDao.USERS();
    }

    public boolean USER_EXISTS(String username) {
        return userDao.USER_EXISTS(username);
    }
}
