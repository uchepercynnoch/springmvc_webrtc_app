package com.peezy.service;

import com.peezy.dao.UserDao;
import com.peezy.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserLoginService implements UserDetailsService {
    private UserDao userDao;

    @Autowired
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Customer customer = userDao.FIND_USERS_BY_NAME(username);
        if (customer == null) throw new UsernameNotFoundException("notFound.username");
        List<String> userRole = userDao.LIST_ROLES(customer);
        List<GrantedAuthority> authorityList = new ArrayList<GrantedAuthority>();
        if (userRole != null) {
            for (String role : userRole) {
                GrantedAuthority authority = new SimpleGrantedAuthority(role);
                authorityList.add(authority);
            }
        }
        return new org.springframework.security.core.userdetails.User(customer.getUserName(), customer.getUserPassword(), authorityList);
    }
}
