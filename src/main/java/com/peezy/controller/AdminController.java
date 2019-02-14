//package com.peezy.controller;
//
//import com.peezy.Validation.ProductInfoValidator;
//import com.peezy.dao.OrderDao;
//import com.peezy.dao.ProductDao;
//import com.peezy.model.OrderDetailInfo;
//import com.peezy.model.OrderInfo;
//import com.peezy.model.PaginationResult;
//import com.peezy.model.ProductInfo;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.support.ResourceBundleMessageSource;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.stereotype.Controller;
//import org.springframework.transaction.annotation.Propagation;
//import org.springframework.transaction.annotation.Transactional;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.validation.annotation.Validated;
//import org.springframework.web.bind.WebDataBinder;
//import org.springframework.web.bind.annotation.*;
//import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//
//import java.util.List;
//
//@Controller
//@Transactional
//public class AdminController {
//
//    private OrderDao orderDAO;
//
//
//    private ProductDao productDAO;
//
//
//    private ProductInfoValidator productInfoValidator;
//
//
//    private ResourceBundleMessageSource messageSource;
//
//    @Autowired
//    public void setOrderDAO(OrderDao orderDAO) {
//        this.orderDAO = orderDAO;
//    }
//
//    @Autowired
//    public void setProductDAO(ProductDao productDAO) {
//        this.productDAO = productDAO;
//    }
//
//    @Autowired
//    public void setProductInfoValidator(ProductInfoValidator productInfoValidator) {
//        this.productInfoValidator = productInfoValidator;
//    }
//
//    @Autowired
//    public void setMessageSource(ResourceBundleMessageSource messageSource) {
//        this.messageSource = messageSource;
//    }
//
//    @InitBinder
//    public void myInitBinder(WebDataBinder dataBinder) {
//        Object target = dataBinder.getTarget();
//        if (target == null) {
//            return;
//        }
//        System.out.println("Target=" + target);
//
//        if (target.getClass() == ProductInfo.class) {
//            dataBinder.setValidator(productInfoValidator);
//            // For upload Image.
//            dataBinder.registerCustomEditor(byte[].class, new ByteArrayMultipartFileEditor());
//        }
//    }
//
//    // GET: Show Login Page
//    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
//    public String login(Model model) {
//
//        return "login";
//    }
//
//    @RequestMapping(value = {"/accountInfo"}, method = RequestMethod.GET)
//    public String accountInfo(Model model) {
//
//        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//        System.out.println(userDetails.getPassword());
//        System.out.println(userDetails.getUsername());
//        System.out.println(userDetails.isEnabled());
//
//        model.addAttribute("userDetails", userDetails);
//        return "accountInfo";
//    }
//
//    @RequestMapping(value = {"/orderList"}, method = RequestMethod.GET)
//    public String orderList(Model model, //
//                            @RequestParam(value = "page", defaultValue = "1") String pageStr) {
//        int page = 1;
//        try {
//            page = Integer.parseInt(pageStr);
//        } catch (Exception e) {
//        }
//        final int MAX_RESULT = 5;
//        final int MAX_NAVIGATION_PAGE = 10;
//
//        PaginationResult<OrderInfo> paginationResult //
//                = orderDAO.LIST_ORDER_INFO(page, MAX_RESULT, MAX_NAVIGATION_PAGE);
//
//        model.addAttribute("paginationResult", paginationResult);
//        return "orderList";
//    }
//
//    // GET: Show product.
//    @RequestMapping(value = {"/product"}, method = RequestMethod.GET)
//    public String product(Model model, @RequestParam(value = "code", defaultValue = "") String code) {
//        ProductInfo productInfo = null;
//
//        if (code != null && code.length() > 0) {
//            productInfo = productDAO.FIND_PRODUCT_INFO(code);
//        }
//        if (productInfo == null) {
//            productInfo = new ProductInfo();
//            productInfo.setNewProduct(true);
//        }
//        model.addAttribute("productForm", productInfo);
//        return "product";
//    }
//
//    // POST: Save product
//    @RequestMapping(value = {"/product"}, method = RequestMethod.POST)
//    // Avoid UnexpectedRollbackException (See more explanations)
//    @Transactional(propagation = Propagation.NEVER)
//    public String productSave(Model model, //
//                              @ModelAttribute("productForm") @Validated ProductInfo productInfo, //
//                              BindingResult result, //
//                              final RedirectAttributes redirectAttributes) {
//
//        if (result.hasErrors()) {
//            return "product";
//        }
//        try {
//            productDAO.SAVE(productInfo);
//        } catch (Exception e) {
//            // Need: Propagation.NEVER?
//            String message = e.getMessage();
//            model.addAttribute("message", message);
//            // Show product form.
//            return "product";
//
//        }
//        return "redirect:/productList";
//    }
//
//    @RequestMapping(value = {"/order"}, method = RequestMethod.GET)
//    public String orderView(Model model, @RequestParam("orderId") String orderId) {
//        OrderInfo orderInfo = null;
//        if (orderId != null) {
//            orderInfo = this.orderDAO.GET_ORDER_INFO(orderId);
//        }
//        if (orderInfo == null) {
//            return "redirect:/orderList";
//        }
//        List<OrderDetailInfo> details = this.orderDAO.LIST_ORDER_DETAILS_INFOS(orderId);
//        orderInfo.setDetails(details);
//
//        model.addAttribute("orderInfo", orderInfo);
//
//        return "order";
//    }
//}
