package com.project.todoapp.Controller;
import com.project.todoapp.Entities.Work;
import com.project.todoapp.Repositories.WorkRepository;
import com.project.todoapp.Services.WorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.project.todoapp.Entities.Member;
import com.project.todoapp.Repositories.MemberRepository;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.security.Principal;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
public class IndexController {

    @Autowired
    MemberRepository memberRepository;
    @Autowired
    WorkService workService;
    @Autowired
    WorkRepository workRepository;

    @GetMapping("/user")
    public String showIndex(Model model, Principal principal){
        if(principal == null){
            return "views/loginForm";
        }
        model.addAttribute("members", memberRepository.getOne(principal.getName()));
        model.addAttribute("work", new Work());
        String update_status = "";
        model.addAttribute("update_status",update_status);
        String workOwner = memberRepository.getOne(principal.getName()).getEmail();
        List<Work> userWorks = workService.findWorksByWorkOwner(workOwner);
        model.addAttribute("works",userWorks);
        return "index";
    }
    @GetMapping("/addWork")
    public String addWork(@ModelAttribute("work")Work work, Principal principal){
        work.setWorkOwner(memberRepository.getOne(principal.getName()).getEmail());
        workService.addWork(work);
        return "redirect:/user";
    }
    @GetMapping("/deleteWork/{id}")
    public String deleteWork(@PathVariable(name="id") Integer id){
        workService.deleteWork(id);
        return "redirect:/user";
    }

}