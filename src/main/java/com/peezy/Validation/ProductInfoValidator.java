package com.peezy.Validation;

import com.peezy.dao.ProductDao;
import com.peezy.entity.Product;
import com.peezy.model.ProductInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class ProductInfoValidator implements Validator {
    @Autowired
    private ProductDao productDao;

    public boolean supports(Class<?> aClass) {
        return ProductInfo.class.isAssignableFrom(aClass);
    }

    public void validate(Object o, Errors errors) {
        ProductInfo productInfo = (ProductInfo) o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "code", "NotEmpty.productForm.code");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty.productForm.name");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "price", "NotEmpty.productForm.price");

        String code = productInfo.getCode();
        if (code != null && code.length() > 0) {
            if (code.matches("\\s+")) {
                errors.rejectValue("code", "Pattern.productForm.code");
            } else if (productInfo.isNewProduct()) {
                Product product = productDao.FIND_PRODUCT(code);
                if (product != null) {
                    errors.rejectValue("code", "Duplicate.productForm.code");
                }
            }
        }

    }
}
