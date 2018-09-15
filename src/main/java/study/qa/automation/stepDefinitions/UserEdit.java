package study.qa.automation.stepDefinitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static study.qa.automation.utils.TestContext.getDriver;


public class UserEdit {
    @Then("^I clear element with xpath \"([^\"]*)\"$")
    public void iClearElementWithXpath(String xpath) throws Throwable {
        getDriver().findElement(By.xpath(xpath)).clear();
    }
}
