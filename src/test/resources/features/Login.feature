Feature: Als Benutzer sollte ich mich anmelden
@login
  Scenario: Mit gultige Zugangsdaten anmelden.
    Given Der Benutzer ist auf dem Loginpage
    When  Der Benutzer gibt gultige Anmeldedaten "ertan986@gmail.com" und "Dd.8385752"
    Then Der Benutzer sollte sich anmelden können