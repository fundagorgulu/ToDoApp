package com.project.todoapp.Controller;

import com.project.todoapp.Entities.Member;
import com.project.todoapp.Entities.Work;
import com.project.todoapp.Services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    AdminServices adminService;
    @Autowired
    MemberService memberService;
    @Autowired
    WorkService workService;

    @GetMapping("/members")
    public String getMembers(Model model) {
        List<Member> members = adminService.allMembers();
        model.addAttribute("members", members);
        return "views/members";
    }
    @GetMapping("/works")
    public String getWorks(Model model) {
        List<Work> works = workService.allWorks();
        model.addAttribute("works", works);
        return "views/works";
    }

    @GetMapping("/delete/{email}")
    public String deleteMember(@PathVariable(name="email") String email){
        adminService.deleteMember(email);
        return "redirect:/members";
    }

}
