package com.peezy.dao;

import com.peezy.entity.Accounts;

public interface AccountDao {
    Accounts FIND_ACCOUNT(String userName);
}
