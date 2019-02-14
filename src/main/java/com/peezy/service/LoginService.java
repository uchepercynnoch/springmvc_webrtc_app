//package com.peezy.service;
//
//import com.peezy.dao.AccountDao;
//import com.peezy.entity.Accounts;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//
//import java.util.ArrayList;
//import java.util.List;
//
//@Service
//public class LoginService implements UserDetailsService {
//    private AccountDao accountDao;
//
//    @Autowired
//    public void setAccountDao(AccountDao accountDao) {
//        this.accountDao = accountDao;
//    }
//
//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        Accounts accounts = accountDao.FIND_ACCOUNT(username);
//        if (accounts == null) throw new UsernameNotFoundException(username + " does not exist!");
//        String role = accounts.getUserRole();
//        List<GrantedAuthority> authorityList = new ArrayList<GrantedAuthority>();
//        GrantedAuthority authority = new SimpleGrantedAuthority(role);
//        authorityList.add(authority);
//        boolean enabled = accounts.isActive();
//        boolean accountNonExpired = true;
//        boolean credentialsNonExpired = true;
//        boolean accountNonLocked = true;
//        return new User(accounts.getUserName(), accounts.getPassword(), enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorityList);
//    }
//}
