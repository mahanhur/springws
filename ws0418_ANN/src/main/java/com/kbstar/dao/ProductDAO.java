package com.kbstar.dao;

import com.kbstar.dto.ProductDTO;
import com.kbstar.frame.MyDao;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository("pdao")
public class ProductDAO implements MyDao<String, ProductDTO> {

    @Override
    public void insert(ProductDTO productDTO) {
        System.out.println("Oracle Inserted : " + productDTO);
    }

    @Override
    public void delete(String s) {
        System.out.println("Oracle Deleted : " + s);

    }

    @Override
    public void update(ProductDTO productDTO) {
        System.out.println("Oracle Updated : " + productDTO);

    }

    @Override
    public ProductDTO select(String s) {
        ProductDTO product = null;
        product = new ProductDTO(s, "phone", 5000, 25);
        return product;
    }

    @Override
    public List<ProductDTO> select() {
        List<ProductDTO> list = new ArrayList<>();
        list.add(new ProductDTO("pd01", "phone", 5000, 25));
        list.add(new ProductDTO("pd02", "TV", 6000, 30));
        list.add(new ProductDTO("pd03", "laptop", 12000, 7));
        return list;
    }
}
