package com.peezy.daoImpl;

import com.peezy.dao.OrderDao;
import com.peezy.dao.ProductDao;
import com.peezy.entity.Order;
import com.peezy.entity.OrderDetail;
import com.peezy.entity.Product;
import com.peezy.model.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Repository
public class OrderDaoImpl implements OrderDao {
    @Autowired
    private ProductDao productDao;

    @Autowired
    private SessionFactory sessionFactory;

    private Session session() {
        return sessionFactory.getCurrentSession();
    }

    private int getMaxOrderNum() {
        CriteriaBuilder builder = session().getCriteriaBuilder();
        CriteriaQuery<Integer> query = builder.createQuery(Integer.class);
        Root<Order> root = query.from(Order.class);
        query.select(builder.max(root.<Integer>get("orderNum")));
        Query<Integer> orderQuery = session().createQuery(query);
        Integer value = orderQuery.uniqueResult();
        if (value == null) {
            return 0;
        }
        return value;

    }

    public void SAVE_ORDER(CartInfo cartInfo) {
        int orderNum = this.getMaxOrderNum() + 1;
        Order order = new Order();

        order.setId(UUID.randomUUID().toString());
        order.setOrderNum(orderNum);
        order.setOrderDate(new Date());
        order.setAmount(cartInfo.getAmountTotal());

        CustomerInfo customerInfo = cartInfo.getCustomerInfo();
        order.setCustomerName(customerInfo.getName());
        order.setCustomerEmail(customerInfo.getEmail());
        order.setCustomerPhone(customerInfo.getPhone());
        order.setCustomerAddress(customerInfo.getAddress());
        session().persist(order);

        List<CartLineInfo> lines = cartInfo.getCartLines();

        for (CartLineInfo line : lines) {
            OrderDetail detail = new OrderDetail();
            detail.setId(UUID.randomUUID().toString());
            detail.setOrder(order);
            detail.setAmount(line.getAmount());
            detail.setPrice(line.getProductInfo().getPrice());
            detail.setQuanity(line.getQuantity());

            String code = line.getProductInfo().getCode();
            Product product = this.productDao.FIND_PRODUCT(code);
            detail.setProduct(product);

            session().persist(detail);
        }

        // Set OrderNum for report.
        cartInfo.setOrderNum(orderNum);
    }

    public PaginationResult<OrderInfo> LIST_ORDER_INFO(int page, int maxResult, int maxNavigationPage) {
        CriteriaBuilder builder = session().getCriteriaBuilder();
        CriteriaQuery<OrderInfo> orderInfoCriteriaQuery = builder.createQuery(OrderInfo.class);
        Root<OrderInfo> orderInfoRoot = orderInfoCriteriaQuery.from(OrderInfo.class);
        orderInfoCriteriaQuery.select(orderInfoRoot);
        orderInfoCriteriaQuery.orderBy(builder.desc(orderInfoRoot.get("orderNum")));
        Query<OrderInfo> query = session().createQuery(orderInfoCriteriaQuery);
        return new PaginationResult<OrderInfo>(query, page, maxResult, maxNavigationPage);
    }

    public Order findOrder(String orderId) {
        CriteriaBuilder builder = session().getCriteriaBuilder();
        CriteriaQuery<Order> orderCriteriaQuery = builder.createQuery(Order.class);
        Root<Order> orderRoot = orderCriteriaQuery.from(Order.class);
        orderCriteriaQuery.select(orderRoot).where(builder.equal(orderRoot.get("id"), orderId));
        Query<Order> query = session().createQuery(orderCriteriaQuery);
        return query.uniqueResult();
    }

    public OrderInfo GET_ORDER_INFO(String orderId) {
        Order order = this.findOrder(orderId);
        if (order == null) {
            return null;
        }
        return new OrderInfo(order.getId(), order.getOrderDate(),
                order.getOrderNum(), order.getAmount(), order.getCustomerName(),
                order.getCustomerAddress(), order.getCustomerEmail(), order.getCustomerPhone());
    }

    public List<OrderDetailInfo> LIST_ORDER_DETAILS_INFOS(String orderId) {
        CriteriaBuilder builder = session().getCriteriaBuilder();
        CriteriaQuery<OrderDetailInfo> detailCriteriaQuery = builder.createQuery(OrderDetailInfo.class);
        Root<OrderDetailInfo> orderDetailRoot = detailCriteriaQuery.from(OrderDetailInfo.class);
        detailCriteriaQuery.select(orderDetailRoot).where(builder.equal(orderDetailRoot.get("id"), orderId));
        Query<OrderDetailInfo> query = session().createQuery(detailCriteriaQuery);
        return query.list();
    }
}
