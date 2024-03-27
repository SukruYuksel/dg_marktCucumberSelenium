package com.dg_markt.pages;

import com.dg_markt.utilities.BrowserUtils;
import com.dg_markt.utilities.Driver;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class RegisterPage extends BasePage{
    @FindBy(xpath = "//input[@type='submit']")
    public WebElement continueBtn;
    @FindBy(css= "[class='alert alert-danger alert-dismissible']")
    public WebElement warningMessageContinueBtn;
    @FindBy(id= "input-firstname")
    public WebElement firstNameinput;
    @FindBy(id = "input-lastname")
    public WebElement lastNameInput;
    @FindBy(id = "input-email")
    public WebElement emailInput;
    @FindBy(id = "input-telephone")
    public WebElement telefonnummerInput;
    @FindBy(id = "input-password")
    public WebElement passwordInput;
    @FindBy(id = "input-confirm")
    public WebElement passwordConfirmInput;
    @FindBy(css = "[type='checkbox']")
    public WebElement checkbox;
    @FindBy(tagName = "h1")
    public WebElement createdMessage;
    @FindBy(css = "[class='text-danger']")
    public WebElement errorMessage;



    public void listAusfüllen(String firstName,String lastName,String emailAdresse,String telefonnummer,
    String password,String confirmPassword){
        firstNameinput.sendKeys(firstName);
        BrowserUtils.waitForClickablility(firstNameinput,2);
        lastNameInput.sendKeys(lastName);
        BrowserUtils.waitForClickablility(emailInput,2);
        emailInput.sendKeys(emailAdresse);
        BrowserUtils.waitForClickablility(telefonnummerInput,2);
        telefonnummerInput.sendKeys(telefonnummer);
        BrowserUtils.waitForClickablility(passwordInput,2);
        passwordInput.sendKeys(password);
        BrowserUtils.waitForClickablility(passwordConfirmInput,2);
        passwordConfirmInput.sendKeys(confirmPassword);
        BrowserUtils.waitForClickablility(checkbox,2);
        checkbox.click();
        BrowserUtils.waitForClickablility(continueBtn,2);
        continueBtn.click();

    }





    }


