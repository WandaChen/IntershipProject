// Created by Viacheslav (Slava) Skryabin 04/01/2018
package study.qa.automation.stepDefinitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import cucumber.api.java.en.And;
import cucumber.api.java.en.But;
import org.apache.commons.io.FileUtils;
import org.assertj.core.api.AbstractBooleanAssert;
import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.io.File;
import java.util.Date;
import java.util.Iterator;
import static org.assertj.core.api.Assertions.*;
import static study.qa.automation.utils.TestContext.getDriver;
import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.Alert;

public class MyStepdefs {

    @Then ("^I click on element with xpath \"([^\"]*)\"$")
    public void iClickOnElementWithXpath(String xpath) {

        getDriver().findElement(By.xpath(xpath)).click();
    }

    @When("^I type \"([^\"]*)\" into element with xpath \"([^\"]*)\"$")
    public void iTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

   @Then("^element with xpath \"([^\"]*)\" should be displayed$")
    public void elementWithXpathShouldBeDisplayed(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }

    @Then("^I type quote \"([^\"]*)\" into element with xpath \"([^\"]*)\"$")
    public void iTypeQuoteIntoElementWithXpath(String text, String xpath)  {
        text = text.replace("'", "");
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @Then("^I should see element with xpath \"([^\"]*)\" should be masked$")
    public void iShouldSeeElementWithXpathShouldBeMasked(String xpath) throws
            NoAlertPresentException,InterruptedException  {
        WebElement input = getDriver().findElement(By.xpath(xpath));
        boolean isEncrypted = input.getAttribute("type").equals("password");
        if (isEncrypted)
            System.out.println("The password is masked!");
        else {
            System.out.println("Warning! The password is not masked!");
            // Switching to Alert
            Alert alert = getDriver().switchTo().alert();
            // Capturing alert message.
            String alertMessage= getDriver().switchTo().alert().getText();
            // Displaying alert message
            System.out.println(alertMessage);
            Thread.sleep(5000);
            // Accepting alert
            alert.accept();
        }
    }

    @Then("^I copy \"([^\"]*)\" into element with xpath \"([^\"]*)\"$")
    public void iCopyIntoElementWithXpath(String text, String xpath) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        WebElement key1 =  getDriver().findElement(By.xpath(xpath));
        key1.sendKeys(Keys.CONTROL, "c");
        assertThat(key1.isEnabled()).isFalse();
    }

    @Then("^element with xpath \"([^\"]*)\" should be presented$")
    public void elementWithXpathShouldBePresented(String xpath) {
        assertThat(getDriver().findElements(By.xpath(xpath))).hasSize(1);
    }

 }
