package com.luoxn28.blog.dao;

/**
 * Message类，对应message表，留言板功能
 * @author luoxn28
 * @date 2016.6.19
 */
public class Message {
    private int id;         // message主键id
    private String content; // message内容
    private String author;  // message作者
    private String date;    // message写作日期

    public Message() {
    }

    public Message(String content, String author, String date) {
        this.content = content;
        this.author = author;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Message{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", author='" + author + '\'' +
                ", date='" + date + '\'' +
                '}';
    }
}
