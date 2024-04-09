package com.dg_markt.step_Def;

import com.dg_markt.pages.LoginPage;
import com.dg_markt.pages.LoginPanel;
import com.dg_markt.utilities.BrowserUtils;
import io.cucumber.java.bs.A;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class Login_stepDef {

    LoginPage loginPage=new LoginPage();
    LoginPanel loginPanel=new LoginPanel();

    @Given("Der Benutzer ist auf dem Loginpage")
    public void der_benutzer_ist_auf_dem_loginpage() {
        loginPanel.vorlogin(2);



    }
    @When("Der Benutzer gibt gultige Anmeldedaten {string} und {string}")
    public void der_benutzer_gibt_gultige_anmeldedaten_und(String emailAddress, String password) {
        loginPage.login(emailAddress,password);


    }
    @Then("Der Benutzer sollte sich anmelden können")
    public void der_benutzer_sollte_sich_anmelden_können() {
        BrowserUtils.verifyElementDisplayed(loginPage.LoginPageAccount);

    }


}
