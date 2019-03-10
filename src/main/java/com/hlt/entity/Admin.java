package com.hlt.entity;

public class Admin {
    private String username;
    private Integer password;

    @Override
    public String toString() {
        return "Admin{" +
                "username='" + username + '\'' +
                ", password=" + password +
                '}';
    }

    public Admin() { super(); }

    public Admin(String username, Integer password) {
        this.username = username;
        this.password = password;
    }

    public String getUsername() { return username; }

    public void setUsername(String username) { this.username = username; }

    public Integer getPassword() { return password; }

    public void setPassword(Integer password) { this.password = password; }
}