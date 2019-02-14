package com.peezy.Validation;

import com.peezy.model.CustomerInfo;
import org.apache.commons.validator.routines.EmailValidator;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class CustomerInfoValidator implements Validator {
    private EmailValidator emailValidator = EmailValidator.getInstance();

    public boolean supports(Class<?> aClass) {
        return CustomerInfo.class.isAssignableFrom(aClass);
    }

    public void validate(Object o, Errors errors) {
        CustomerInfo customerInfo = (CustomerInfo) o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty.customerForm.name");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty.customerForm.email");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty.customerForm.address");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "NotEmpty.customerForm.phone");
        if (!emailValidator.isValid(customerInfo.getEmail())) {
            errors.rejectValue("email", "Pattern.customerForm.email");
        }
    }
}
