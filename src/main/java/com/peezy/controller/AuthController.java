package com.peezy.controller;

import com.peezy.entity.Customer;
import com.peezy.service.UserValidation;
import com.peezy.serviceImpl.UserDaoServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@RestController
@RequestMapping("api")
public class AuthController {
    private UserDaoServiceImpl userDaoService;
    private UserValidation userValidation;

    @Autowired
    public void setUserDaoService(UserDaoServiceImpl userDaoService) {
        this.userDaoService = userDaoService;
    }

    @Autowired
    public void setUserValidation(UserValidation userValidation) {
        this.userValidation = userValidation;
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String actionRegister(@ModelAttribute Customer customer, BindingResult result, RedirectAttributes redirectAttributes) {
        userValidation.validate(customer, result);
        if (result.hasErrors()){
            return "Error please check fields";
        }
        userDaoService.CREATE_USERS(customer);
        return "User Created";
    }


}
