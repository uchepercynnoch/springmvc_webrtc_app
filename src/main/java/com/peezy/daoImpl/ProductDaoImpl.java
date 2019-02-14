package com.peezy.daoImpl;

import com.peezy.dao.ProductDao;
import com.peezy.entity.Product;
import com.peezy.model.PaginationResult;
import com.peezy.model.ProductInfo;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.Date;

@Repository
public class ProductDaoImpl implements ProductDao {
    @Autowired
    private SessionFactory sessionFactory;

    private Session session() {
        return sessionFactory.getCurrentSession();
    }

    public Product FIND_PRODUCT(String code) {
        CriteriaBuilder builder = session().getCriteriaBuilder();
        CriteriaQuery<Product> productCriteriaQuery = builder.createQuery(Product.class);
        Root<Product> productRoot = productCriteriaQuery.from(Product.class);
        productCriteriaQuery.select(productRoot).where(builder.equal(productRoot.get("code"), code));
        Query<Product> query = session().createQuery(productCriteriaQuery);
        return query.uniqueResult();
    }

    public ProductInfo FIND_PRODUCT_INFO(String code) {
        Product product = this.FIND_PRODUCT(code);
        if (product == null) {
            return null;
        }
        return new ProductInfo(product);
    }

    public PaginationResult<ProductInfo> QUERY_PRODUCTS(int page, int maxResult, int maxNavigationPage) {
        return QUERY_PRODUCTS(page, maxResult, maxNavigationPage, null);
    }

    public PaginationResult<ProductInfo> QUERY_PRODUCTS(int page, int maxResult, int maxNavigationPage, String likeName) {
        String sql = "Select new " + ProductInfo.class.getName()
                + "(p.code, p.name, p.price) " + " from "
                + Product.class.getName() + " p ";
        if (likeName != null && likeName.length() > 0) {
            sql += " Where lower(p.name) like :likeName ";
        }
        sql += " order by p.createDate desc ";
        Query query = session().createQuery(sql);
        if (likeName != null && likeName.length() > 0) {
            query.setParameter("likeName", "%" + likeName.toLowerCase() + "%");
        }
        return new PaginationResult<ProductInfo>(query, page, maxResult, maxNavigationPage);
    }

    public void SAVE(ProductInfo productInfo) {
        String code = productInfo.getCode();

        Product product = null;

        boolean isNew = false;
        if (code != null) {
            product = this.FIND_PRODUCT(code);
        }
        if (product == null) {
            isNew = true;
            product = new Product();
            product.setCreateDate(new Date());
        }
        product.setCode(code);
        product.setName(productInfo.getName());
        product.setPrice(productInfo.getPrice());

        if (productInfo.getFileData() != null) {
            byte[] image = productInfo.getFileData().getBytes();
            if (image != null && image.length > 0) {
                product.setImage(image);
            }
        }
        if (isNew) {
            this.session().persist(product);
        }
        // If error in DB, Exceptions will be thrown out immediately
        this.session().flush();
    }
}
