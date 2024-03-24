
Feature: Als Benutzer sollte ich mich registrieren können.


  Scenario: Negative Test- Mit dem leeren Formular registieren
    Given Der Benutzer ist auf die Register page
    When Der Benutzer klick continue, ohne die Pfilichtfelder auszufüllen
    Then Überprüft, dass der Benutzer sich nicht registrieren kann

  @register
  Scenario Outline: Positive Test- Pflichter Felder ausfüllen
    Given Der Benutzer ist auf die Register page
    When Der Benutzer gibt gültige informationen wie folgendes "<First Name>" und "<Last Name>" und "<E-Mail>" "<Telephone>" und "<Password>" und "<Password Confirm>"
    Then Überprüft, dass der Benutzer sich  registrieren kann
    Examples:
      | First Name | Last Name | E-Mail             | Telephone   | Password  | Password Confirm |
      | ertannn      | yilmaz    | ertnan9866@gmail.com | 01765253698 | sS.123456 | sS.123456        |





