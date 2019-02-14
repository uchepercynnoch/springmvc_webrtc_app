package Test;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class TestMainClass {

    private PasswordEncoder getEncoder() {
        return new BCryptPasswordEncoder();
    }

    private TestMainClass() {
        String password = "welcome";
        System.out.println(getEncoder().encode(password));
    }

    public static void main(String[] args) {
        TestMainClass mainClass = new TestMainClass();
    }
}
