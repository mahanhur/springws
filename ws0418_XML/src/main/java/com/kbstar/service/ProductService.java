package com.kbstar.service;

import com.kbstar.dto.ProductDTO;
import com.kbstar.frame.MyDao;
import com.kbstar.frame.MyService;

import java.util.List;

public class ProductService implements MyService<String, ProductDTO> {
    MyDao<String, ProductDTO> pdao;

    public ProductService(MyDao pdao) {
        this.pdao = pdao;
    }
    @Override
    public void register(ProductDTO productDTO) {
        pdao.insert(productDTO);
        System.out.println("Send Email");
    }

    @Override
    public void remove(String s) {
        pdao.delete(s);
        System.out.println("Send Email");
    }

    @Override
    public void modify(ProductDTO productDTO) {
        pdao.update(productDTO);
        System.out.println("Send Email");
    }

    @Override
    public ProductDTO get(String s) {
        return pdao.select(s);
    }

    @Override
    public List<ProductDTO> get() {
        return pdao.select();
    }
}
