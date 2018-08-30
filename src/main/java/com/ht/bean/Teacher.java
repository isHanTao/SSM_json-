package com.ht.bean;

public class Teacher {
    private String id;
    private int classId;
    private String name;
    private String sex;
    private String qqNumber;
    private String password;

    @Override
    public String toString() {
        return "teacher{" +
                "id='" + id + '\'' +
                ", classId=" + classId +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", qqNumber='" + qqNumber + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getQqNumber() {
        return qqNumber;
    }

    public void setQqNumber(String qqNumber) {
        this.qqNumber = qqNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

