package org.mlcr.jobfind.controller;

import org.mlcr.jobfind.bean.Applicant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;

import org.mlcr.jobfind.database.mgt.impl.JobFindDataServiceImpl;

@Controller
//@RequestMapping(value = "/applicant")
public class ApplicantController {

    //sample
    @RequestMapping(value = "/applicant", method = RequestMethod.GET)
    public ModelAndView student() {
        return new ModelAndView("applicant", "command", new Applicant());
    }

    //sample
    @RequestMapping(value = "/addApplicant", method = RequestMethod.POST)
    public String addApplicant(@ModelAttribute("SpringWeb")Applicant applicant, ModelMap model) {
        model.addAttribute("name", applicant.getName());
        model.addAttribute("age", applicant.getAge());
        model.addAttribute("id", applicant.getId());
        return "result";
    }
//
//    @RequestMapping(value = "/addApplicant", method = RequestMethod.POST)
//    public String registerApplicant(@ModelAttribute("SpringWeb")Applicant applicant, ModelMap model) {
//        JobFindDataServiceImpl jobFindDataServiceImpl = new JobFindDataServiceImpl();
//        return "result";
//    }

    //sample
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login() {
        return new ModelAndView("login", "command", new Applicant());
    }


}