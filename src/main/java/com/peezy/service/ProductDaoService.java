package com.peezy.service;

import com.peezy.entity.Product;
import com.peezy.model.PaginationResult;
import com.peezy.model.ProductInfo;

public interface ProductDaoService {
    Product FIND_PRODUCT(String code);

    ProductInfo FIND_PRODUCT_INFO(String code);


    PaginationResult<ProductInfo> QUERY_PRODUCTS(int page,
                                                 int maxResult, int maxNavigationPage);

    PaginationResult<ProductInfo> QUERY_PRODUCTS(int page, int maxResult,
                                                 int maxNavigationPage, String likeName);

    void SAVE(ProductInfo productInfo);
}
