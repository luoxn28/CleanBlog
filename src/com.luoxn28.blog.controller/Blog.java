package com.luoxn28.blog.controller;

import com.luoxn28.blog.dao.BlogDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

/**
 * Created by luoxn28 on 2016/6/12.
 */
@Controller
@RequestMapping("/blog")
public class Blog {

    // blog 表操作类
    @Autowired
    private BlogDao blogDao = null;

    @RequestMapping
    public String handleRequest(@RequestParam(value="p")int p, Map<String, Object> map) {
        // 读取对应 blog(s)
        if (p == 0) {
            List<com.luoxn28.blog.dao.Blog> blogs = blogDao.getAll();
            map.put("blogs", blogs);
            return "blogs";
        } else {
            com.luoxn28.blog.dao.Blog blog = blogDao.getById(p);
            map.put("blog", blog);
            return "blog";
        }
    }
}

