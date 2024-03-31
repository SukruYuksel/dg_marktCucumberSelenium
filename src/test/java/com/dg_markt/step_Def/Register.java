package com.dg_markt.step_Def;

import com.dg_markt.pages.LoginPanel;
import com.dg_markt.pages.RegisterPage;
import com.dg_markt.utilities.BrowserUtils;
import com.dg_markt.utilities.ConfigurationReader;
import com.dg_markt.utilities.Driver;
import io.cucumber.java.bs.A;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

import java.lang.module.Configuration;
import java.util.Map;

public class Register {
    RegisterPage registerPage=new RegisterPage();
    LoginPanel loginPanel=new LoginPanel();

    @Given("Der Benutzer ist auf die Register page")
    public void der_benutzer_ist_auf_die_register_page() {
     loginPanel.vorlogin();


    }
    @When("Der Benutzer klick continue, ohne die Pfilichtfelder auszufüllen")
    public void der_benutzer_klick_continue_ohne_die_pfilichtfelder_auszufüllen() {
       registerPage.continueBtn.click();

    }
    @Then("Überprüft, dass der Benutzer sich nicht registrieren kann")
    public void überprüft_dass_der_benutzer_sich_nicht_registrieren_kann() {
        String expectedErrorText="Warning: You must agree to the Privacy Policy!";
        String actualText=registerPage.warningMessageContinueBtn.getText();
        System.out.println("actualText = " + actualText);
        Assert.assertEquals(expectedErrorText,actualText);

    }

    @When("Der Benutzer gibt gültige informationen wie folgendes {string} und {string} und {string} {string} und {string} und {string}")
    public void derBenutzerGibtGültigeInformationenWieFolgendesUndUndUndUnd(String firstName, String lastName , String email, String telephone, String password, String confirm) {
   registerPage.listAusfüllen(firstName,lastName,email,telephone,password,confirm);

    }
    @Then("Überprüft, dass der Benutzer sich  registrieren kann")
    public void überprüftDassDerBenutzerSichRegistrierenKann() {
        String expectedMessage="Your Account Has Been Created!";
        String actualMesssage=registerPage.createdMessage.getText();
        Assert.assertEquals(expectedMessage,actualMesssage);
    }



    @When("Der Benutzer gibt ungültige informationen wie folgendes {string} und {string} und {string} {string} und {string} und {string}")
    public void derBenutzerGibtUngültigeInformationenWieFolgendesUndUndUndUndUnd(String firstName , String lastName , String eMail , String telephone , String password , String passwordConfirm) {
 registerPage.listAusfüllen(firstName,lastName,eMail,telephone,password,passwordConfirm);
    }
    @Then("Fehlermeldung  überprüfen {string}")
    public void fehlermeldungÜberprüfen(String expectedFehlermeldung) {
         String actualErrorMessage = registerPage.errorMessage.getText();
        System.out.println("actualErrorMessage = " + actualErrorMessage);
        System.out.println("expectedFehlermeldung = " + expectedFehlermeldung);
        Assert.assertEquals(expectedFehlermeldung,actualErrorMessage);
    }






    @Then("Uberpruft ungultige Email Daten und {string}")
    public void uberpruftUngultigeEmailDatenUnd(String arg0) {
    }

    @Then("Verify Fehlermeldung {string}")
    public void verifyFehlermeldung(String fehlermeldung) {
        System.out.println("fehlermeldung = " + fehlermeldung);
        String actualMessage = registerPage.getDisapperingWarningMessage(fehlermeldung);
        Assert.assertTrue(actualMessage.contains(fehlermeldung));
    }

    @Then("Fehlermeldung allready registered message  überprüfen {string}")
    public void fehlermeldungAllreadyRegisteredMessageÜberprüfen(String fehlermeldung) {
        System.out.println("fehlermeldung = " + fehlermeldung);


        String actualMessage=registerPage.emailAlreadyMessage.getText();
        System.out.println("actualMessage = " + actualMessage);


    }
}
