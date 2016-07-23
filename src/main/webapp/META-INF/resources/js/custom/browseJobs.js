/**
 * Created by ramindu on 7/9/16.
 */
var currentItemsInEducationalInfo = 0;

$(document).ready(function() {
    $.ajax({
        url: "http://localhost:8080/JobFind/browse-jobs",
        method: "GET",
        dataType: 'json',
        // contentType: 'application/json',
        // data: JSON.stringify(bc.filters),
        success: function (response) {
            console.log(response);
            var jobs = response;
            var noJobsNotification = document.getElementById("no-jobs-notification");
            var tbody = document.getElementById("browse-jobs-tbody");
            if (0 < jobs.length) {
                noJobsNotification.style.display = "none";
                tbody.style.display = "block";

                for(var i = 0; i < jobs.length; i++) {
                    var job = jobs[i];
                    var dataRow = document.createElement("tr");
                    currentItemsInEducationalInfo++;
                    if (currentItemsInEducationalInfo % 2 == 1) {
                        dataRow.setAttribute("class", "odd col-md-12");
                    } else {
                        dataRow.setAttribute("class", "even col-md-12");
                    }

                    dataRow.innerHTML = "<td class=\"col-md-1\"><img src=\"data:image/png;base64,"+job.companyLogo+"\" alt=\"\" width=\"50px\" height=\"50px\"></td>" +
                    "<td class=\"tbl-title col-md-8\"><h4>" + job.specification + "</h4>"+
                    "<p><i class=\"fa fa-briefcase\"></i>"+ job.company +" &nbsp;&nbsp;&nbsp;<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>" +
                        job.location + " &nbsp;&nbsp;&nbsp; &dollar;"+job.salary+"</p></td>" +
                    "<td class=\"tbl-title col-md-2\"><a class=\"job-type-btn job-type-blue clickable-anchor\">"+job.vacancyType+"</a></td>";

                    tbody.appendChild(dataRow);
                }
            } else {
                noJobsNotification.style.display = "block";
                tbody.style.display = "none";
                tbody.innerHTML = "";
            }
        },
        complete: function (jqXHR, status) {
            if (status !== "success") console.warn("Error accessing source for : ");
        }
    });

});

function getQueryVariable(variable) {
    var query = window.location.search.substring(1);
    var vars = query.split('&');
    for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split('=');
        if (decodeURIComponent(pair[0]) == variable) {
            return decodeURIComponent(pair[1]);
        }
    }
    return "unavailable";
}


