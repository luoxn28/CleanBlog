package com.luoxn28.blog.controller;

import com.luoxn28.blog.dao.*;
import com.luoxn28.blog.dao.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Message控制器，留言板功能
 * @author luoxn28
 * @date 2016.6.19
 */
@Controller
@RequestMapping("/message")
public class Message {

    // blog表操作类
    @Autowired
    private BlogDao blogDao;

    // Message表操作类
    @Autowired
    private MessageDao messageDao;

    @RequestMapping
    public String index(com.luoxn28.blog.dao.Message message, Map<String, Object> map) {
        //System.out.println(message);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = format.format(new Date());

        message.setDate(date);
        messageDao.insert(message);

        List<Blog> blogs = blogDao.getAll();
        List<com.luoxn28.blog.dao.Message> messages = messageDao.getAll();

        map.put("blogs", blogs);
        map.put("messages", messages);
        return "index";
    }
}
