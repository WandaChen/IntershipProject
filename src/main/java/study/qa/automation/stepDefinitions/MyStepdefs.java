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
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.awt.*;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

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

    @Then("^element with xpath \"([^\"]*)\" should be presented$")
    public void elementWithXpathShouldBePresented(String xpath) {
        assertThat(getDriver().findElements(By.xpath(xpath))).hasSize(1);
    }

    @Then("^I should see element with xpath \"([^\"]*)\" should be disabled$")
    public void iShouldSeeElementWithXpathShouldBeDisabled(String xpath) {
        // Write code here that turns the phrase above into concrete actions
        assertThat(getDriver().findElement(By.xpath(xpath)).isEnabled()).isFalse();
    }

    @Then("^element with xpath \"([^\"]*)\" should not be selected$")
    public void elementWithXpathShouldNotBeSelected(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isSelected()).isFalse();
    }

    @Then("^element with xpath \"([^\"]*)\" should be selected$")
    public void elementWithXpathShouldbeSelected(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isSelected()).isTrue();
    }

    @Then("^I scroll to the element with xpath \"([^\"]*)\" with offset (\\d+)$")
    public void iScrollToTheElementWithXpathWithOffset(String xpath, int offset) throws Exception {
        WebElement element = getDriver().findElement(By.xpath(xpath));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].scrollIntoView(true);", element);
        executor.executeScript("window.scrollBy(0, " + offset + ");", element);
        Thread.sleep(500);
    }

    @Then("^I cut \"([^\"]*)\" into element with xpath \"([^\"]*)\"$")
    public void iCutIntoElementWithXpath(String text, String xpath)  {
        // Write code here that turns the phrase above into concrete actions
        WebElement key1 = getDriver().findElement(By.xpath(xpath));
        key1.sendKeys(text);
        System.out.println("*** " + key1 + " text ");

        Actions oAction = new Actions(getDriver());
        oAction.moveToElement(key1);
        oAction.contextClick(key1).sendKeys(key1, Keys.ARROW_DOWN).sendKeys(key1, Keys.ARROW_DOWN).build().perform();

        key1.sendKeys(Keys.CONTROL, "A");
        System.out.println("*** " + key1 + " sent select key");
        String clipboardInitial = getClipboardText();
        System.out.println("Starting clipboard: " + clipboardInitial);
        key1.sendKeys(Keys.CONTROL, "X");
//        key1.sendKeys(Keys.SHIFT, Keys.DELETE);
        String clipboardCopy = getClipboardText();
        System.out.println("Copy clipboard: " + clipboardCopy);
        assertThat(clipboardInitial != clipboardCopy && !clipboardInitial.equals(clipboardCopy));
        System.out.println("I am trying to check if CUT key is working");
    }

    @Then("^I copy \"([^\"]*)\" from element with xpath \"([^\"]*)\"$")
    public void iCopyFromElementWithXpath(String text, String xpath) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        WebElement key1 = getDriver().findElement(By.xpath(xpath));
        key1.sendKeys(text);
        System.out.println("*** " + key1 + " text ");

        // try to make right context menu pop up
        Actions oAction = new Actions(getDriver());
        oAction.moveToElement(key1);
        oAction.contextClick(key1).sendKeys(key1, Keys.ARROW_DOWN).sendKeys(key1, Keys.ARROW_DOWN).build().perform();

        key1.sendKeys(Keys.CONTROL, "A");
        System.out.println("*** " + key1 + " sent select key");
        String clipboardInitial = getClipboardText();
        System.out.println("Starting clipboard: " + clipboardInitial);
        key1.sendKeys(Keys.CONTROL, "C");
//        key1.sendKeys(Keys.SHIFT, Keys.INSERT);
        String clipboardCopy = getClipboardText();
        System.out.println("Copy clipboard: " + clipboardCopy);
        assertThat(clipboardInitial != clipboardCopy && !clipboardInitial.equals(clipboardCopy));
        System.out.println("I am trying to check if COPY key is working");
        System.out.println("key1.isSelected() -- " + key1.isSelected() + '\n');
    }

    @Then("^\"([^\"]*)\" should be disabled for in pop-up menu on element with xpath \"([^\"]*)\"$")
    public void shouldBeDisabledForInPopUpMenuOnElementWithXpath(String key, String xpath) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        WebElement key1 = getDriver().findElement(By.xpath(xpath));
        String type = key1.getAttribute("type");
        System.out.println("type=" + type);

        Actions oAction = new Actions(getDriver());
        oAction.moveToElement(key1);
        oAction.contextClick(key1).sendKeys(key1, Keys.ARROW_DOWN).sendKeys(key1, Keys.ARROW_DOWN).build().perform();
//        oAction.contextClick(key1).moveToElement().build().perform();

        key1.sendKeys(Keys.CONTROL, "A");
        String clipboardInitial = getClipboardText();
        System.out.println("Starting clipboard: " + clipboardInitial);
//        key1.sendKeys(Keys.CONTROL, "C");
        key1.sendKeys(Keys.CONTROL, Keys.INSERT);
        String clipboardCopy = getClipboardText();
        System.out.println("Copy clipboard: " + clipboardCopy);
        assertThat(clipboardInitial != clipboardCopy && !clipboardInitial.equals(clipboardCopy));
//        key1.sendKeys(Keys.CONTROL, "V");
        key1.sendKeys(Keys.SHIFT, Keys.INSERT);

    }

    String getClipboardText() {
        String stringClipboard = null;
        try {
            stringClipboard = (String) Toolkit.getDefaultToolkit().getSystemClipboard().getData(DataFlavor.stringFlavor);
        } catch (HeadlessException ex) {

        } catch (UnsupportedFlavorException ex) {

        } catch (IOException ex) {

        }
        return stringClipboard;
    }
}
