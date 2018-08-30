package com.ht.controller;

import com.ht.bean.Student;
import com.ht.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

    @Autowired
    TeacherService teacherService;

    @RequestMapping("/logIn")
    public String logIn() {
        return "teacherLogin";
    }
    @RequestMapping(value = "/main", method = RequestMethod.POST)
    public String logIn(String name, String password, Model model){
        if(teacherService.logIn(name,password)){
            model.addAttribute("className",teacherService.getClassNameById(teacherService.getMessageById(name).getClassId()));
            model.addAttribute("teacher",teacherService.getMessageById(name));
            return "teacher";
        }else {
            model.addAttribute("message","用户密码错误");
            model.addAttribute("name",name);
            return "teacherLogin";
        }
    }

    @ResponseBody
    @RequestMapping(value = "/logIn/check",method = RequestMethod.POST)
    public HashMap<String, Object> check(String name){
        String flag = "用户名可用";
        if(teacherService.cheackId(name))
            flag = "用户名不存在";
        Student student = new Student();
        HashMap<String,Object> map = new HashMap<>();
        map.put("mes",flag);
        return map;
    }
    @RequestMapping(value = "/select")
    public String select(Student student, Model model){

        List<Student> studentByParame = teacherService.getStudentByParame(student);
        model.addAttribute("studentByParame",studentByParame);
        return "selectRest";
    }
}
