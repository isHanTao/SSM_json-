package com.ht.bean;

public class ClassName {
    private String name;
    private int id;
    private String slogan;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSlogan() {
        return slogan;
    }

    public void setSlogan(String slogan) {
        this.slogan = slogan;
    }

    @Override
    public String toString() {
        return "ClassName{" +
                "name='" + name + '\'' +
                ", id=" + id +
                ", slogan='" + slogan + '\'' +
                '}';
    }
}
