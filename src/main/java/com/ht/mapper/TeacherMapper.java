package com.ht.mapper;

import com.ht.bean.Teacher;
import org.springframework.stereotype.Service;

@Service
public interface TeacherMapper {

    public String getPasswordById(String id);
    public void update(Teacher teacher);
    public Teacher getTeacherById(String id);


}
