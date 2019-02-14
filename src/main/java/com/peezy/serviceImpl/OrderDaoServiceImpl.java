package com.peezy.serviceImpl;

import com.peezy.dao.OrderDao;
import com.peezy.daoImpl.OrderDaoImpl;
import com.peezy.model.CartInfo;
import com.peezy.model.OrderDetailInfo;
import com.peezy.model.OrderInfo;
import com.peezy.model.PaginationResult;
import com.peezy.service.OrderDaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OrderDaoServiceImpl implements OrderDaoService {
    private OrderDao orderDao;
    private OrderDaoImpl dao;

    @Autowired
    public void setDao(OrderDaoImpl dao) {
        this.dao = dao;
    }

    @Autowired
    public void setOrderDao(OrderDao orderDao) {
        this.orderDao = orderDao;
    }

    public void SAVE_ORDER(CartInfo cartInfo) {
        orderDao.SAVE_ORDER(cartInfo);
    }

    public PaginationResult<OrderInfo> LIST_ORDER_INFO(int page, int maxResult, int maxNavigationPage) {
        return orderDao.LIST_ORDER_INFO(page, maxResult, maxNavigationPage);
    }

    public OrderInfo GET_ORDER_INFO(String orderId) {
        dao.findOrder(orderId);
        return null;
    }

    public List<OrderDetailInfo> LIST_ORDER_DETAILS_INFOS(String orderId) {
        return orderDao.LIST_ORDER_DETAILS_INFOS(orderId);
    }
}
