package com.peezy.controller;

import com.peezy.entity.Customer;
import com.peezy.serviceImpl.UserDaoServiceImpl;
import com.peezy.service.UserValidation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;
import org.springframework.web.servlet.mvc.support.*;

@Controller
@RequestMapping("/customer")
public class UserController {
    private UserValidation signUpValidator;
    private UserDaoServiceImpl userDaoService;

    @Autowired
    public void setSignUpValidator(UserValidation signUpValidator) {
        this.signUpValidator = signUpValidator;
    }

    @Autowired
    public void setUserDaoService(UserDaoServiceImpl userDaoService) {
        this.userDaoService = userDaoService;
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list(@ModelAttribute Customer users) {
        ModelAndView model = new ModelAndView("user/list");
        model.addObject("list", userDaoService.USERS_LIST(users));

        return model;
    }

    @RequestMapping(value = "/changePass/{username}", method = RequestMethod.GET)
    public ModelAndView changePass(@PathVariable("username") String username) {
        ModelAndView model = new ModelAndView("user/changePass");
        model.addObject("user", userDaoService.FIND_USERS_BY_NAME(username));

        return model;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("user") Customer customer) {
        ModelAndView model = changePass(customer.getUserName());
        userDaoService.CREATE_USERS(customer);
        model.addObject("msg", "Your password has been changed successfully!");

        return model;
    }

    @RequestMapping(value = "/signUp", method = RequestMethod.GET)
    public ModelAndView signUp() {
        ModelAndView model = new ModelAndView("user/sign-up");
        model.addObject("customerForm", new Customer());

        return model;
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@ModelAttribute("customerForm") Customer customerForm,
                           BindingResult result, RedirectAttributes redirectAttributes) {

        signUpValidator.validate(customerForm, result);

        if (result.hasErrors()) {
            return "user/sign-up";
        } else {
            userDaoService.CREATE_USERS(customerForm);
            redirectAttributes.addFlashAttribute("msg", "Your account has been created successfully!");

            return "redirect:/login";
        }
    }

    @RequestMapping(value = "audioCall", method = RequestMethod.GET)
    public ModelAndView audioCall() {
        return new ModelAndView("home/widgets");
    }
}
