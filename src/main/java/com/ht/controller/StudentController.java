package com.ht.controller;

import com.ht.bean.Msg;
import com.ht.bean.Student;
import com.ht.bean.Teacher;
import com.ht.service.StudentService;
import com.ht.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/student")
public class StudentController {
    @Autowired
    StudentService studentService;
    Student student;

    @RequestMapping("/list")
    public String getAllStudents(Model model){
        return "students";
    }
    @ResponseBody
    @RequestMapping("/getListMessage")
    public Msg getListMessage(int teacher){
        System.out.println(teacher);
     return Msg.success().add("list",studentService.getStudentsByClassId(teacher));
    }
    @RequestMapping("/addStudent")
    public String addStudent(){
        return "add";
    }
    @RequestMapping(value = "/addStudent",method = RequestMethod.POST)
    public String addStudent(Student student){
        studentService.addStudent(student);
        return "redirect: /student/list";
    }
    @ResponseBody
    @RequestMapping(value = "/delete")
    public String deleteStudent(String studentId){
        studentService.deleteStudentById(studentId);
        return "200";
    }
    @ResponseBody
    @RequestMapping(value = "/edit")
    public String editStudent(String studentId,Model model){
        studentService.update(studentService.getStudentById(studentId));
        return "200";
    }

}
