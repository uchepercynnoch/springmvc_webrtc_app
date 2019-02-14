package com.peezy.model;

public class CartLineInfo {
    private ProductInfo productInfo;
    private int quantity;

    CartLineInfo() {
        this.quantity = 0;
    }

    public ProductInfo getProductInfo() {
        return productInfo;
    }

    void setProductInfo(ProductInfo productInfo) {
        this.productInfo = productInfo;
    }

    public int getQuantity() {
        return quantity;
    }

    void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getAmount() {
        return this.productInfo.getPrice() * this.quantity;
    }
}
