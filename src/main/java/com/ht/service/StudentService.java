package com.ht.service;

import com.ht.mapper.StudentMapper;
import com.ht.bean.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {

    @Autowired
    StudentMapper studentMapper;
    public List<Student> getAllStudent(){
        return studentMapper.getAllStudent();
    }
    public Student getStudentById(String id){
        return studentMapper.getStudentById(id);
    }
    public void addStudent(Student student){
        studentMapper.addStudent(student);
    }
    public void deleteStudentById(String id){
        studentMapper.deleteStudentById(id);
    }
    public List<Student> getStudentsByClassId(int classId){
        return studentMapper.getStudentByClassId(classId);
    }
    public void update(Student student){
        studentMapper.update(student);
    }
    public List<Student>  getStudentByParame(Student student){
        return studentMapper.getStudentByParame(student);
    }
}
