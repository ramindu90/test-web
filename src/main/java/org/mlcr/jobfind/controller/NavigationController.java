package org.mlcr.jobfind.controller;

import org.mlcr.jobfind.bean.Applicant;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller

public class NavigationController {

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String home(ModelMap model) {
        return "html/index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "html/my-account";
    }

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signUp() {
        return "html/my-account";
    }

    @RequestMapping(value = "/jobfinder/information", method = RequestMethod.GET)
    public String getJobfinderInformationForm() {
        return "html/add-jobFinder-info";
    }


}