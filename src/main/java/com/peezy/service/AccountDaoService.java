package com.peezy.service;

import com.peezy.entity.Accounts;

public interface AccountDaoService {
    Accounts FIND_ACCOUNT(String userName);
}
