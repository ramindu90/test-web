package org.mlcr.jobfind.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class NavigationController {

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String home(ModelMap model) {
        return "index";
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