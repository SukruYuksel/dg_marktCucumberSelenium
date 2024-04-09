package com.dg_markt.step_Def;


import com.dg_markt.utilities.Driver;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.time.Duration;

public class Hooks {
    @Before
    public void setUp() {
        //Driver.get().manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS); // Before Selenium 4
        Driver.get().manage().timeouts().implicitlyWait(Duration.ofSeconds(10)); // After Selenium 4
        Driver.get().manage().window().maximize();
    }

    @After
    public void tearDown(Scenario scenario) {
        if (scenario.isFailed()) {
            final byte[] screenshot = ((TakesScreenshot) Driver.get()).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot, "image/png", "screenshot");
        }
      Driver.closeDriver();
    }
}
