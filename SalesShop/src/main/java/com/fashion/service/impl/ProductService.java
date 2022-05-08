package com.fashion.service.impl;

import com.fashion.dao.IProductDAO;
import com.fashion.model.Product;
import com.fashion.service.IProductService;

import javax.inject.Inject;
import java.util.Map;

@SuppressWarnings("unused")
public class ProductService implements IProductService {

    @Inject
    private IProductDAO dao;

    @Override
    public int save(Product product) {
        int productID = dao.save(product);
        product.getDetail().forEach(p-> {
            System.out.println(p);
            Integer colorID = dao.getColorID(p.getColor());
            if(colorID == null)
                colorID = dao.saveColor(p.getColor());
            dao.insertProductDetail(productID, colorID, dao.getSizeID(p.getSize()), p.getAmount(), p.getPrice(), p.getImage());
        });
        return productID;
    }

    @Override
    public Map<Object, Product> getByCategory(int category) {
        return dao.getByCategory(category);
    }

    @Override
    public Map<Object, Product> getThreeItemsByCategoryID(int category, int limit) {
        return dao.getThreeItemsByCategoryID(category, limit);
    }

    @Override
    public Product findOne(int productID) {
        return dao.findOne(productID);
    }

    @Override
    public boolean update(Product product) {
        return dao.update(product);
    }
}
