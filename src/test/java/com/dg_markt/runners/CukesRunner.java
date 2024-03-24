package com.dg_markt.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"json:target/cucumber.json",
                "html:target/default-html-report.html",
                "rerun:target/rerun.txt",
        },
        features = "src/test/resources/features",
        glue = "com/dg_markt/step_Def",
        dryRun = false,
        tags="@register"

)
public class CukesRunner {


}
