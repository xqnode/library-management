package com.example.springboot.service;

import com.example.springboot.controller.request.BaseRequest;
import com.example.springboot.controller.request.UserPageRequest;
import com.example.springboot.entity.User;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface IUserService {

    List<User> list();

    PageInfo<User> page(BaseRequest baseRequest);

    void save(User user);

    User getById(Integer id);

    void update(User user);

    void deleteById(Integer id);

    void handleAccount(User user);

}
