package com.peezy.service;

import com.peezy.entity.Customer;
import com.peezy.serviceImpl.UserDaoServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.*;

@Component
public class UserValidation implements Validator {
    private UserDaoServiceImpl userDaoService;

    @Autowired
    public void setUserDaoService(UserDaoServiceImpl userDaoService) {
        this.userDaoService = userDaoService;
    }

    public boolean supports(Class<?> aClass) {
        return Customer.class.isAssignableFrom(aClass);
    }

    public void validate(Object o, Errors errors) {
        Customer customer = (Customer) o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "notEmpty.username");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userPassword", "notEmpty.password");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmPassword", "notEmpty.confirmPassword");

        if (customer.getUserPassword() != null && customer.getConfirmPassword() != null &&
                !customer.getUserPassword().equals(customer.getConfirmPassword())) {
            errors.rejectValue("userPassword", "notMatch.confirmPassword");
        }
        if (userDaoService.USER_EXISTS(customer.getUserName())) errors.rejectValue("userName", "exists.username");
    }
}
