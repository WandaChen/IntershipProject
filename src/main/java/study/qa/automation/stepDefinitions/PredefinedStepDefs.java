package study.qa.automation.stepDefinitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import static study.qa.automation.utils.TestContext.getDriver;

public class PredefinedStepDefs {

    @Given("^I open url \"([^\"]*)\"$")
    public void iOpenUrl(String url) {
        getDriver().get(url);
    }

    @Then("^I wait for (\\d+) sec$")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }
}
