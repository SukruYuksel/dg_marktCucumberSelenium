# Dg_Markt Task- Hybrid (BDD and DDT) Framework With Cucumber

### Codes And Tests Prepared By :
Sükrü Yüksel

QA Automation Engineer

yksl3743@dc@gmail.com
___
### Getting Started
To get start with this framework, you will need to have the following software on your system.

• Java 8 or later \
• Maven 3 or later \
• Chrome or Firefox or Edge Web Browser
1. Open terminal or command prompt and navigate to the root directory of the project.
2. Run the following command to download the required dependencies:
   #### mvn clean install
3. Run the following command to run the tests:
   #### mvn verify
4. Open the project with Intellij IDEA
    - Go to CukesRunner class inside the project
    - Click Run button
   #### Run With CukesRunner
    - Go to CukesRunner
    - Add a tag name
    - Click the "Run" Button
___
### My framework is a Cucumber and Hybrid Framework which contains BDD and DDT Frameworks.
• I built my framework by using Java Programming Language.\
• I used maven as a build automation tool for this framework.\
• I used Selenium (4.18.1), Cucumber and Junit to orchestrate my tests, and put the dependencies inside pom.xml file.\
• For assertions/verifications, I utilized JUnit assertions to compare expected and actual results.\
• I created a properties file to store related data such as browser and url.\
• I used Page Object Model Design Pattern to enhance test maintenance and reducing code duplication. This is one of the most famous Selenium approaches.\
• Inside pages package; I used Page Classes to store and identify the elements that I worked on.\
• I used the PageFactory class and initElements method to initialize them.\
• Inside runners package; in the CukesRunner class, I used glues to connect feature files to step definitions.\
• I added the report plugin to CukesRunner to generate Json and HTML reports.\
• I also used tags for tests that I want to run in bulk.\
• stepDefs package is the place where my actual test scripts are.\
• Inside stepDefs package I used Hooks class as pre-and post-test implementations.\
• I added a screenshot interface in After method in Hooks class; when the scenario fails, it takes a screenshot.\
• I defined the steps of my scenarios inside StepDef classes.\
• Inside utilities package, utility classes such as BrowserUtils, Driver, and ConfigurationReader were stored.\
• I used the Singleton Design Pattern in Driver class by declaring constructor of class as private, so that no one instantiates class outside of it. And declared a static method with return type as object of class which should check if class is already instantiated once.\
• Inside features directory which is under resources directory I created feature files.\
• In these feature files I used Cucumber and Gherkin language for non-technical people to understand what is going on in testing.\
• I stored my feature files separately in the features directory, and it helped in the re-usability of the codes.\
• I created my test cases as Scenario and Scenario Outline in the feature files as-is.\
• My framework is easy to maintain since I have elements stored in one centralized place. If any changes happen on the application about the elements, I know where to go and how to fix it to run test scripts correctly.