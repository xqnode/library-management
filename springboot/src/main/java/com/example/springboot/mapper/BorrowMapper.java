package com.example.springboot.mapper;

import com.example.springboot.controller.request.BaseRequest;
import com.example.springboot.entity.Borrow;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BorrowMapper {

    List<Borrow> list();

    List<Borrow> listByCondition(BaseRequest baseRequest);

    void save(Borrow obj);

    Borrow getById(Integer id);

    void updateById(Borrow user);

    void deleteById(Integer id);

}
