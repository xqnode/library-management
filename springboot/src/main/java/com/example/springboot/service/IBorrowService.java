package com.example.springboot.service;

import com.example.springboot.controller.request.BaseRequest;
import com.example.springboot.entity.Borrow;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface IBorrowService {
    
    List<Borrow> list();

    PageInfo<Borrow> page(BaseRequest baseRequest);

    void save(Borrow obj);

    Borrow getById(Integer id);

    void update(Borrow obj);

    void deleteById(Integer id);

}
