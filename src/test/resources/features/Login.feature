Feature:Als Benutzer sollte ich mich anmelden
  Background:
    Given Der Benutzer ist auf dem Loginpage

  Scenario: Positiv-Mit gultige Zugangsdaten anmelden.
    When  Der Benutzer gibt gultige Anmeldedaten "ertan986@gmail.com" und "Dd.8385752"
    Then Der Benutzer sollte sich anmelden


  Scenario Outline: Negativ-Mit einem leeren Pflichterfeld nich anmelden
    When Der Benutzer gibt "<EmailAdresse>" und "<Password>"
    Then Der Benutzer sollte sich nicht anmelden.
    Examples:
      | EmailAdresse       | Password   |
      | ertan986@gmail.com |            |
     |                    | Dd.8385752 |


  Scenario Outline: Negativ-Alle Pflichter Feld leer lassen
    When Der Benutzer gibt "<EmailAdresse>" und "<Password>"
    Then Der Benutzer sollte sich nicht anmelden.
    Examples:
      | EmailAdresse | Password |
      |              |          |


  Scenario Outline: Negativ-Nicht registierten Mailadresse anmelden
    When Der Benutzer gibt "<EmailAdresse>" und "<Password>"
    Then Der Benutzer sollte sich nicht anmelden.
    Examples:
      | EmailAdresse    | Password   |
      | ahmet@gmail.com | DD.8385752 |


  Scenario Outline: Negativ- Einer falschen E-Mailadresseformat  anmelden
    When Der Benutzer gibt "<EmailAdresse>" und "<Password>"
    Then Der Benutzer sollte sich nicht anmelden.
    Examples:
      | EmailAdresse   | Password   |
      | ertan          | DD.8385752 |
      | ertan@         | DD.8385752 |
      | ertan@g        | DD.8385752 |
      | ertan@gmail    | DD.8385752 |
      | ertan@gmail    | DD.8385752 |
      | @gmail.com     | DD.8385752 |
      | ertangmail.com | DD.8385752 |

  @login
  Scenario Outline: Negativ- Einer falschen E-Mailadresseformat  anmelden
    When Der Benutzer gibt "<EmailAdresse>" und "<Password>"
    Then Der Benutzer sollte sich nicht anmelden.
    Examples:
      | EmailAdresse   | Password   |
      | ertan986@gmail.com       | D4 |
      | ertan986@gmail.com       | DD.8385752wefdfdgfgssawadf |






