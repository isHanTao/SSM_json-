package com.ht.mapper;

import com.ht.bean.Student;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface StudentMapper {
    public List<Student> getAllStudent();
    public Student getStudentById(String id);
    public void addStudent(Student student);
    public void deleteStudentById(String id);
    public void update(Student student);
    public List<Student> getStudentByClassId(int classId);
    public List<Student> getStudentByParame(Student student);

}
