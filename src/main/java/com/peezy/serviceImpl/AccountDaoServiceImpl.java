package com.peezy.serviceImpl;

import com.peezy.dao.AccountDao;
import com.peezy.entity.Accounts;
import com.peezy.service.AccountDaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AccountDaoServiceImpl implements AccountDaoService {
    private AccountDao accountDao;
    private PasswordEncoder passwordEncoder;

    @Autowired
    public void setPasswordEncoder(PasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }

    @Autowired
    public void setAccountDao(AccountDao accountDao) {
        this.accountDao = accountDao;
    }

    public Accounts FIND_ACCOUNT(String userName) {

        return accountDao.FIND_ACCOUNT(userName);
    }
}
