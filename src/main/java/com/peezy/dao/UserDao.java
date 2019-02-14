package com.peezy.dao;

import com.peezy.entity.Customer;

import java.util.List;

public interface UserDao {
    Customer FIND_USERS_BY_NAME(String username);

    Customer FIND_USERS_BY_ID(Integer id);

    void CREATE_USERS(Customer customer);

    void DELETE_USERS(Customer customer);

    List<String> LIST_ROLES(Customer users);

    List<Customer> USERS_LIST(Customer users);

    List<Customer> USERS();

    boolean USER_EXISTS(String username);
}
