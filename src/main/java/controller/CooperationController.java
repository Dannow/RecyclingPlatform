package controller;

import domain.Cooperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.CooperationService;

@Controller
public class CooperationController {
    @Autowired
    public CooperationService cooperationService;

    //申请合作
    @RequestMapping("/applyForCooperation")
    public String applyForCooperation(Cooperation cooperation){
        cooperationService.addCooperation(cooperation);
        return "redirect:/index.jsp";
    }
}
