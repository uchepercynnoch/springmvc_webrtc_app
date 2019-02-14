package com.peezy.daoImpl;

import com.peezy.dao.AccountDao;
import com.peezy.entity.Accounts;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

@Repository
public class AccountDaoImpl implements AccountDao {
    @Autowired
    private SessionFactory sessionFactory;

    private Session session() {
        return sessionFactory.getCurrentSession();
    }

    public Accounts FIND_ACCOUNT(String userName) {
        CriteriaBuilder builder = session().getCriteriaBuilder();
        CriteriaQuery<Accounts> accountsCriteriaQuery = builder.createQuery(Accounts.class);
        Root<Accounts> accountsRoot = accountsCriteriaQuery.from(Accounts.class);
        accountsCriteriaQuery.select(accountsRoot).where(builder.equal(accountsRoot.get("userName"), userName));
        Query<Accounts> query = session().createQuery(accountsCriteriaQuery);
        return query.uniqueResult();
    }
}
