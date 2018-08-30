package com.ht;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ht.bean.Student;
import com.ht.mapper.StudentMapper;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class test {
    @Test
    public void test1() throws JsonProcessingException {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("com/ht/config/spring-mvc.xml");
        StudentMapper students = (StudentMapper) applicationContext.getBean("studentMapper");
        List<Student> student = students.getAllStudent();
        ObjectMapper mapper = new ObjectMapper();
        String s = mapper.writeValueAsString(student);
        System.out.println(s);
    }
}
