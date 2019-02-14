package com.peezy.service;

import com.peezy.model.CartInfo;
import com.peezy.model.OrderDetailInfo;
import com.peezy.model.OrderInfo;
import com.peezy.model.PaginationResult;

import java.util.List;

public interface OrderDaoService {
    void SAVE_ORDER(CartInfo cartInfo);

    PaginationResult<OrderInfo> LIST_ORDER_INFO(int page,
                                                int maxResult, int maxNavigationPage);

    OrderInfo GET_ORDER_INFO(String orderId);

    List<OrderDetailInfo> LIST_ORDER_DETAILS_INFOS(String orderId);
}
