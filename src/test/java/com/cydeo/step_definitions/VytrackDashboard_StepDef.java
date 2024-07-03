package com.cydeo.step_definitions;

import com.cydeo.pages.VytrackDashboardPage;
import com.cydeo.utilities.BrowserUtils;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.WebElement;

import java.util.ArrayList;
import java.util.List;

public class VytrackDashboard_StepDef {

    VytrackDashboardPage vytrackDashboardPage= new VytrackDashboardPage();

    @Then("user should be able to see following modules")
    public void user_should_be_able_to_see_following_modules(List<String> expectedModules) {
        BrowserUtils.waitForTitleContains("Dashboard");
        List<String> actualModules = new ArrayList<>();

        for (WebElement eachmodule : vytrackDashboardPage.allModules) {
            actualModules.add(eachmodule.getText());
        }

        Assert.assertEquals(expectedModules, actualModules);








    }
}
