package study.qa.automation.stepDefinitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;

public class QuizStepDef {
    @And("^I click on element \"([^\"]*)\" with xpath \"([^\"]*)\"$")
    public void iClickOnElementWithXpath(String arg0, String arg1)  {
        //Select Choice
        System.out.println("I got the right choice");
    }
}
