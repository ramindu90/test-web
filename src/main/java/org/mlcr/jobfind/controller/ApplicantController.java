package org.mlcr.jobfind.controller;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mlcr.jobfind.bean.Applicant;
import org.mlcr.jobfind.utils.Util;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;


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

    @RequestMapping(value = "/browse-jobs-page", method = RequestMethod.GET)
    public ModelAndView browseJobsPage() {
        return new ModelAndView("browse-jobs");
    }

    @RequestMapping(value = "/browse-jobs", method = RequestMethod.GET)
    public @ResponseBody String browseJobs(@RequestParam(value = "vacancy-types", required = false) String vacancyTypes,
            @RequestParam(value = "specialisms", required = false) String specialisms,
            @RequestParam(value = "salaries", required = false) String salaries,
            @RequestParam(value = "experiences", required = false) String experiences) {

        String vacancyType[] = null;
        String specialism[] = null;
        String salary[] = null;
        String experience[] = null;

        if(null != vacancyTypes) {
            vacancyType = vacancyTypes.split(",");
        }
        if(null != specialisms) {
            specialism = specialisms.split(",");
        }
        if(null != salaries) {
            salary = salaries.split(",");
        }
        if(null != experiences) {
            experience = experiences.split(",");
        }

        JSONArray jobs = Util.getJobs();
        JSONArray responseJobs = new JSONArray();
        for (int i=0; i<jobs.length() ; i++) {
            boolean validJob = true;
            try {
                JSONObject job = jobs.getJSONObject(i);
                if (null != vacancyType) {
                    for (int j=0; j<vacancyType.length ; j++) {
                        if (!vacancyType[j].equalsIgnoreCase(job.getString("vacancy-type"))) {
                            validJob = false;
                            break;
                        }
                    }
                }
                if (null != specialism) {
                    for (int j=0; j<vacancyType.length ; j++) {
                        if (!specialism[j].equalsIgnoreCase(job.getString("specialism"))) {
                            validJob = false;
                            break;
                        }
                    }
                }
                if (null != salary) {
                    for (int j=0; j<vacancyType.length ; j++) {
                        if (!salary[j].equalsIgnoreCase(job.getString("salary"))) {
                            validJob = false;
                            break;
                        }
                    }
                }
                if (null != experience) {
                    for (int j=0; j<vacancyType.length ; j++) {
                        if (!experience[j].equalsIgnoreCase(job.getString("experience"))) {
                            validJob = false;
                            break;
                        }
                    }
                }
                if(validJob) {
                    responseJobs.put(job);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return responseJobs.toString();
    }

}