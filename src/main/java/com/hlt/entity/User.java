package com.hlt.entity;

public class User {
    private Integer id;
    private String username;
    private String name;
    private Integer age;
    private String password;
    private String email;
    private String sex;

    public User() { super(); }

    public User(Integer id, String username, String name, Integer age, String password, String email, String sex) {
        super();
        this.id = id;
        this.username = username;
        this.name = name;
        this.age = age;
        this.password = password;
        this.email = email;
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", sex='" + sex + '\'' +
                '}';
    }

    public Integer getId() { return id; }

    public void setId(Integer id) { this.id = id; }

    public String getUsername() { return username; }

    public void setUsername(String username) { this.username = username; }

    public String getName() { return name; }

    public String getEmail() { return email; }

    public void setEmail(String email) { this.email = email; }

    public void setName(String name) { this.name = name; }

    public Integer getAge() { return age; }

    public void setAge(Integer age) { this.age = age; }

    public String getPassword() { return password; }

    public void setPassword(String password) { this.password = password; }

    public String getSex() { return sex; }

    public void setSex(String sex) { this.sex = sex; }
}
