package com.ht.bean;

public class Student {
    private String id;
    private int classId;
    private String name;
    private String sex;
    private String qqNumber;
    private String roomId;

    @Override
    public String toString() {
        return "Student{" +
                "id='" + id + '\'' +
                ", classId=" + classId +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", qqNumber='" + qqNumber + '\'' +
                ", roomId='" + roomId + '\'' +
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

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }
}
