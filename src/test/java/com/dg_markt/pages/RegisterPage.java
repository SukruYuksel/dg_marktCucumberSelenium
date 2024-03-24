package com.dg_markt.pages;

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


    public void listAusfüllen(String firstName,String lastName,String emailAdresse,String telefonnummer,
    String passwort,String confirmPassword){
        firstNameinput.sendKeys(firstName);
        lastNameInput.sendKeys(lastName);
        emailInput.sendKeys(emailAdresse);
        telefonnummerInput.sendKeys(telefonnummer);
        passwordInput.sendKeys(passwort);
        passwordConfirmInput.sendKeys(passwort);
        checkbox.click();
        continueBtn.click();

    }

}
