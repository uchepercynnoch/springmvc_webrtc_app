package com.peezy.serviceImpl;

import com.peezy.entity.Product;
import com.peezy.model.PaginationResult;
import com.peezy.model.ProductInfo;
import com.peezy.service.ProductDaoService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ProductDaoServiceImpl implements ProductDaoService {

    public Product FIND_PRODUCT(String code) {
        return null;
    }

    public ProductInfo FIND_PRODUCT_INFO(String code) {
        return null;
    }

    public PaginationResult<ProductInfo> QUERY_PRODUCTS(int page, int maxResult, int maxNavigationPage) {
        return null;
    }

    public PaginationResult<ProductInfo> QUERY_PRODUCTS(int page, int maxResult, int maxNavigationPage, String likeName) {
        return null;
    }

    public void SAVE(ProductInfo productInfo) {

    }
}
