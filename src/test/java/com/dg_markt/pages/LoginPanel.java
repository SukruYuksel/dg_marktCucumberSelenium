package com.dg_markt.pages;

import com.dg_markt.utilities.BrowserUtils;
import com.dg_markt.utilities.ConfigurationReader;
import com.dg_markt.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import java.lang.module.Configuration;

public class LoginPanel extends BasePage{
    @FindBy(xpath = "//input[@name='email']")
    public WebElement lognPanelEmail;
    @FindBy(xpath = "//input[@name='password']")
    public WebElement lognPanelPassword;
    @FindBy(xpath = "//input[@name='login']")
    public WebElement lognPanelLoginBtn;

    public void vorlogin(){
        Driver.get().get(ConfigurationReader.get("url"));
        lognPanelEmail.sendKeys("ders@dgmarkt.com");
        BrowserUtils.waitFor(5);
        lognPanelPassword.sendKeys("2574dGlogin");
        BrowserUtils.waitFor(5);
        lognPanelLoginBtn.click();


        Driver.get().get(ConfigurationReader.get("url1"));
       // register.click();
    }



}
