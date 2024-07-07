package com.cydeo.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;


    @RunWith(Cucumber.class)
    @CucumberOptions(

            plugin = {
                    "pretty",
                    "html:target/cucumber-reports.html",
                    "rerun:target/rerun.txt",
                    "me.jvt.cucumber.report.PrettyReports:target/cucumber"
            },
            features = "src/test/resources/features",
            glue = "com/cydeo/step_definitions",
            dryRun = false, //buraya true dersen sadece olmayanları görürsün.true da bütünkısım yapılmaz sadece olmayan açılır.aşağı kısımda
            tags = "wip ", //buraya hangi tagı koyarsan onu yazdırır.
            //monochrome = true,
           publish = true //generating a report with public link link rapora ulaşmak için
    )
    public class CukesRunner {}

