package study.qa.automation.stepDefinitions;

import cucumber.api.PendingException;
import cucumber.api.java8.En;
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
import static org.junit.jupiter.api.Assertions.assertEquals;
import static study.qa.automation.utils.TestContext.getDriver;
import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.Alert;

public class QuizUpdatedAt  {
        @Then("^I find \"([^\"]*)\" that has title with xpath \"([^\"]*)\"$")
        public void iFindThatHasTitleWithXpath(String text, String xpath)  {
            // Write code here that turns the phrase above into concrete actions
            getDriver().findElement(By.xpath(xpath));

        };

    @Then("^I compare the value of Updated and Created at the table that contains xpath \"([^\"]*)\"$")
    public void iCompareTheValueOfUpdatedAndCreatedAtTheTableThatContainsXpath(String xpath)  {
        // Write code here that turns the phrase above into concrete actions
        WebElement baseTable = getDriver().findElement(By.xpath(xpath));
        System.out.println("Table = " + baseTable.getText() + '\t' + "tagName " + baseTable.getTagName());
        System.out.println("--------");

        //Get all rows
        List<WebElement> rows = baseTable.findElements(By.tagName("tr"));
        //Print data from each row
        String UpdatedText = "";
        String UpdatedAt = "";
        String CreatedText = "";
        String CreatedAt = "";
        for (WebElement row:rows) {
            System.out.println ("Row : " + row.getText());

            List<WebElement> cols = row.findElements(By.tagName("td"));
            for (WebElement col: cols) {
                System.out.print( "Col: " + col.getText() + '\t');
                if (CreatedAt.equals("1") && CreatedText.equals("Created At:"))
                    CreatedAt = col.getText();
                if (col.getText().equals("Created At:")) {
                    CreatedText = col.getText();
                    CreatedAt = "1";
                }

                if (UpdatedAt.equals("1") && UpdatedText.equals("Updated At:"))
                    UpdatedAt = col.getText();
                if (col.getText().equals("Updated At:")) {
                    UpdatedText = col.getText();
                    UpdatedAt = "1";
                }
            }
            System.out.println();
        }
        System.out.println ("Created At: " + CreatedText + ' ' + CreatedAt);
        System.out.println ("Updated At: " + UpdatedText + ' ' + UpdatedAt);
        if(UpdatedAt.equals(CreatedAt)){
            System.out.println("Pass");
        }
        else {
            System.out.println("Fail");
        }
    }

    @Then("^I click on the Edit button with xpath \"([^\"]*)\"$")
    public void iClickOnTheEditButtonWithXpath(String xpath)  {
        WebElement baseTable = getDriver().findElement(By.xpath(xpath));
        System.out.println("Table = " + baseTable.getText() + '\t' + "tagName -- " + baseTable.getTagName());
        System.out.println("--------");

        if (baseTable.getText().equals("Edit")) {
            // baseTable.getTagName().click();
            System.out.println("I click the element");
            getDriver().findElement(By.partialLinkText("Edit")).click();
        }
    }
}
