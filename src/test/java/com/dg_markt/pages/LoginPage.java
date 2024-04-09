package com.dg_markt.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class LoginPage extends BasePage{

    @FindBy(id = "input-email")
    public WebElement emailAdreesInput;

    @FindBy(id = "input-password")
    public WebElement passwordInput;
    @FindBy(xpath = "//input[@type='submit']")
    public WebElement loginButn;

    @FindBy(xpath= "//ul/li[.='Account']")
    public WebElement LoginPageAccount;

    @FindBy( xpath = "//*[@id='account-login']/div[1]")
    public WebElement loginFehlermeldung;

    public void login(String emailAdresse,String password){
        emailAdreesInput.sendKeys(emailAdresse);
        passwordInput.sendKeys(password);
        loginButn.click();
    }

}
