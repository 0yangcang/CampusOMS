package cn.zcs.controller;

import cn.zcs.service.studentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class studentController {
    @Autowired
    studentService studetnService;

    @RequestMapping("/query")
    public String query(Model model) {
        model.addAttribute("students", studetnService.queryAllStudent());
        System.out.println(studetnService.queryAllStudent().toString());
        return "query";
    }

    @RequestMapping("/welcome")
    public String welcome(Model model) {
        return "welcome";
    }
}
