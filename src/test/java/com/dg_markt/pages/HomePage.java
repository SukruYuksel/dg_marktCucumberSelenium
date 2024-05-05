package com.dg_markt.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class HomePage extends BasePage {
    @FindBy(xpath = "//*[.='Category']")
    public WebElement homapageMenu;

}
