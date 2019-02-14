package com.peezy.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.*;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.util.Properties;

@Configuration
@EnableTransactionManagement
@ComponentScans(value = {@ComponentScan("com.peezy.dao"),@ComponentScan("com.peezy.service")})
@PropertySource({"classpath:database.properties"})
public class HibernateConfig {
    @Autowired
    private Environment environment;

    @Bean
    public LocalSessionFactoryBean sessionFactoryBean() {
        LocalSessionFactoryBean factoryBean = new LocalSessionFactoryBean();
        factoryBean.setDataSource(dataSource());
        factoryBean.setPackagesToScan("com.peezy.entity");
        factoryBean.setHibernateProperties(hibernateProps());
        return factoryBean;
    }

    @Bean
    public DataSource dataSource() {
        DriverManagerDataSource managerDataSource = new DriverManagerDataSource();
        managerDataSource.setDriverClassName(environment.getRequiredProperty("jdbc.driverClassName"));
        managerDataSource.setUrl(environment.getRequiredProperty("jdbc.url"));
        managerDataSource.setUsername(environment.getRequiredProperty("jdbc.username"));
        managerDataSource.setPassword(environment.getRequiredProperty("jdbc.password"));
        return managerDataSource;
    }

    private Properties hibernateProps() {
        Properties props = new Properties();
        props.put("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
        props.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
        props.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.format_sql"));
        props.put("hibernate.hbm2ddl.auto", environment.getRequiredProperty("hibernate.hbm2ddl.auto"));
        props.put("hibernate.current_session_context_class", environment.getRequiredProperty("hibernate.current_session_context_class"));
        return props;

    }

    @Bean
    public HibernateTransactionManager transactionManager() {
        HibernateTransactionManager manager = new HibernateTransactionManager();
        manager.setSessionFactory(sessionFactoryBean().getObject());
        return manager;
    }
}
