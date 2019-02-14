package com.peezy.daoImpl;

import com.peezy.dao.UserDao;
import com.peezy.entity.Authority;
import com.peezy.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.Date;
import java.util.List;

@Repository
@Transactional
@SuppressWarnings("unchecked")
public class UserDaoImpl implements UserDao {
    @Autowired
    private SessionFactory sessionFactory;


    private Session getSession() {
        return sessionFactory.openSession();
    }

    public Customer FIND_USERS_BY_NAME(String username) {
        CriteriaBuilder builder = getSession().getCriteriaBuilder();
        CriteriaQuery<Customer> query = builder.createQuery(Customer.class);
        Root<Customer> userRoot = query.from(Customer.class);
        query.select(userRoot).where(builder.equal(userRoot.get("userName"), username));
        Query<Customer> userQuery = getSession().createQuery(query);
        return userQuery.getSingleResult();
    }

    public Customer FIND_USERS_BY_ID(Integer id) {
        CriteriaBuilder builder = getSession().getCriteriaBuilder();
        CriteriaQuery<Customer> query = builder.createQuery(Customer.class);
        Root<Customer> userRoot = query.from(Customer.class);
        query.select(userRoot).where(builder.equal(userRoot.get("userId"), id));
        Query<Customer> userQuery = getSession().createQuery(query);
        return userQuery.getSingleResult();
    }

    public void CREATE_USERS(Customer customer) {
        customer.setCreatedDate(new Date());
        getSession().saveOrUpdate(customer);
    }

    public void DELETE_USERS(Customer customer) {
        getSession().delete(customer);
    }

    public List<String> LIST_ROLES(Customer users) {
        CriteriaBuilder builder = getSession().getCriteriaBuilder();
        CriteriaQuery<Authority> query = builder.createQuery(Authority.class);
        Root<Authority> authorityRoot = query.from(Authority.class);
        query.select(authorityRoot.<Authority>get("userRole")).where(builder.equal(authorityRoot.get("authName"), users.getUserName()));
        Query<Authority> authorityQuery = getSession().createQuery(query);
        return (List) authorityQuery.getResultList();
    }

    public List<Customer> USERS_LIST(Customer users) {
        return null;
    }

    public List<Customer> USERS() {
        CriteriaBuilder builder = getSession().getCriteriaBuilder();
        CriteriaQuery<Customer> query = builder.createQuery(Customer.class);
        Root<Customer> userRoot = query.from(Customer.class);
        query.select(userRoot);
        Query<Customer> userQuery = getSession().createQuery(query);
        return userQuery.getResultList();
    }

    public boolean USER_EXISTS(String username) {
        CriteriaBuilder builder = getSession().getCriteriaBuilder();
        CriteriaQuery<Customer> query = builder.createQuery(Customer.class);
        Root<Customer> userRoot = query.from(Customer.class);
        query.select(userRoot.<Customer>get("userName")).where(builder.equal(userRoot.get("userName"), username));
        Query<Customer> userQuery = getSession().createQuery(query);
        List list = userQuery.getResultList();
        return list.size() > 0;
    }
}
