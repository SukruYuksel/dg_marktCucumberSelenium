
Feature: Als Benutzer sollte ich mich registrieren können.


  Scenario: Negative Test- Mit dem leeren Formular registieren
    Given Der Benutzer ist auf die Register page
    When Der Benutzer klick continue, ohne die Pfilichtfelder auszufüllen
    Then Überprüft, dass der Benutzer sich nicht registrieren kann

  @wip
  Scenario Outline: Positive Test- Pflichter Felder ausfüllen
    Given Der Benutzer ist auf die Register page
    When Der Benutzer gibt gültige informationen wie folgendes "<First Name>" und "<Last Name>" und "<E-Mail>" "<Telephone>" und "<Password>" und "<Password Confirm>"
    Then Überprüft, dass der Benutzer sich  registrieren kann
    Examples:
      | First Name | Last Name | E-Mail                | Telephone   | Password | Password Confirm |
      | ertannnn   | yilmaz    | tatnnnln9866@gmail.com | 01765253698 | 12345    | 12345            |

@regression
  Scenario Outline: Negative Test- sich anmelden, indem Sie eines der erforderlichen Felder leer lassen
    Given Der Benutzer ist auf die Register page
    When Der Benutzer gibt ungültige informationen wie folgendes "<First Name>" und "<Last Name>" und "<E-Mail>" "<Telephone>" und "<Password>" und "<Password Confirm>"
    Then Fehlermeldung  überprüfen "<fehlermeldung>"
    Examples:
      | First Name | Last Name | E-Mail             | Telephone   | Password  | Password Confirm | fehlermeldung                                   |
      |            | yilmaz    | e9866@gmail.com    | 01765253698 | sS.123456 | sS.123456        | First Name must be between 1 and 32 characters! |
      | ertannn    |           | er9866@gmail.com   | 01765253698 | sS.123456 | sS.123456        | Last Name must be between 1 and 32 characters!  |
      | ertannn    | yilmaz    |                    | 01765253698 | sS.123456 | sS.123456        | E-Mail Address does not appear to be valid!     |
      | ertannn    | yilmaz    | ert9866@gmail.com  |             | sS.123456 | sS.123456        | Telephone must be between 3 and 32 characters!  |
      | ertannn    | yilmaz    | erta9866@gmail.com | 01765253698 |           | sS.123456        | Password must be between 4 and 20 characters!   |
      | ertannn    | yilmaz    | erta9866@gmail.com | 01765253698 | sS.123456 |                  | Password confirmation does not match password!  |


Scenario Outline: TC11-Negative Test- ungültiger Mail Adresse
  Given Der Benutzer ist auf die Register page
  When Der Benutzer gibt ungültige informationen wie folgendes "<First Name>" und "<Last Name>" und "<E-Mail>" "<Telephone>" und "<Password>" und "<Password Confirm>"
  Then Verify Fehlermeldung "<fehlermeldung>"
  Examples:
    | First Name | Last Name | E-Mail       | Telephone   | Password  | Password Confirm | fehlermeldung                                                         |
    | ertan      | yilmaz    | j            | 01765253698 | sS.123456 | sS.123456        | Die E-Mail-Adresse muss ein @-Zeichen enthalten.                      |
    | ertan      | yilmaz    | ja           | 01765253698 | sS.123456 | sS.123456        | Die E-Mail-Adresse muss ein @-Zeichen enthalten.                      |
    | ertan      | yilmaz    | ja@          | 01765253698 | sS.123456 | sS.123456        | Gib  |
    | ertan      | yilmaz    | jf@gm        | 01765253698 | sS.123456 | sS.123456        | does                                                                  |
    | ertan      | yilmaz    | jf@gmail     | 01765253698 | sS.123456 | sS.123456        | does                                                                  |
    | ertan      | yilmaz    | @gmail       | 01765253698 | sS.123456 | sS.123456        | Gib                                                                   |
    | ertan      | yilmaz    | @gmail,com   | 01765253698 | sS.123456 | sS.123456        | Gib                                                                   |
    | ertan      | yilmaz    | @gmail.com   | 01765253698 | sS.123456 | sS.123456        | Gib                                                                   |
    | ertan      | yilmaz    | ja.gmail.com | 01765253698 | sS.123456 | sS.123456        | Die E-Mail-Adresse muss ein @-Zeichen enthalten.                      |
    | ertan      | yilmaz    | jagmail.com  | 01765253698 | sS.123456 | sS.123456        | Die E-Mail-Adresse muss ein @-Zeichen enthalten.                      |


  Scenario Outline: TC09- Negative Test- different Passwort und Confirm Passwort
    Given Der Benutzer ist auf die Register page
    When Der Benutzer gibt ungültige informationen wie folgendes "<First Name>" und "<Last Name>" und "<E-Mail>" "<Telephone>" und "<Password>" und "<Password Confirm>"
    Then Fehlermeldung  überprüfen "<fehlermeldung>"
    Examples:
      | First Name | Last Name | E-Mail          | Telephone   | Password  | Password Confirm | fehlermeldung                                   |
      | ertannn    | yilmaz    | e9866@gmail.com | 01765253698 | sS.123456 | AsS.123456        | Password confirmation does not match password! |


  Scenario Outline: TC12- Negative Test- Zuvor verwendete Mailadresse wird registriert
    Given Der Benutzer ist auf die Register page
    When Der Benutzer gibt ungültige informationen wie folgendes "<First Name>" und "<Last Name>" und "<E-Mail>" "<Telephone>" und "<Password>" und "<Password Confirm>"
    Then Fehlermeldung allready registered message  überprüfen "<fehlermeldung>"
    Examples:
      | First Name | Last Name | E-Mail          | Telephone   | Password  | Password Confirm | fehlermeldung                                   |
      | ertannn    | yilmaz    | ertan986@gmail.com| 01765253698 | Aa.12345 | Aa.12345        |  Warning: E-Mail Address is already registered! |


  Scenario Outline: TC13-TC14- Negative Test- Grenzwert der Vorname und Nachnahmefeld
    Given Der Benutzer ist auf die Register page
    When Der Benutzer gibt ungültige informationen wie folgendes "<First Name>" und "<Last Name>" und "<E-Mail>" "<Telephone>" und "<Password>" und "<Password Confirm>"
    Then Fehlermeldung  überprüfen "<fehlermeldung>"
    Examples:
      | First Name                           | Last Name                            | E-Mail               | Telephone   | Password | Password Confirm | fehlermeldung                                   |
      |                                      | yilmaz                               | ertangg986@gmail.com | 01765253698 | Aa.12345 | Aa.12345         | First Name must be between 1 and 32 characters! |
      | asdfghjklöiztuoplwertzujhbnjuztrftzu | yilmaz                               | ertangg986@gmail.com | 01765253698 | Aa.12345 | Aa.12345         | First Name must be between 1 and 32 characters! |
      | ahmet                                |                                      | ertangg986@gmail.com | 01765253698 | Aa.12345 | Aa.12345         | Last Name must be between 1 and 32 characters! |
      | ahmet                                | asdfghjklöiztuoplwertzujhbnjuztrftzu | ertangg986@gmail.com | 01765253698 | Aa.12345 | Aa.12345         | Last Name must be between 1 and 32 characters! |


  Scenario Outline: TC15- Negative Test- Telefonnummer sollte 3-32 Chrakters mit Ziffern
    Given Der Benutzer ist auf die Register page
    When Der Benutzer gibt ungültige informationen wie folgendes "<First Name>" und "<Last Name>" und "<E-Mail>" "<Telephone>" und "<Password>" und "<Password Confirm>"
    Then Fehlermeldung  überprüfen "<fehlermeldung>"
    Examples:
      | First Name | Last Name | E-Mail               | Telephone                            | Password | Password Confirm | fehlermeldung                                   |
      | Ali        | yilmaz    | ertangg986@gmail.com | 01                                   | Aa.12345 | Aa.12345         | Telephone must be between 3 and 32 characters! |
      | Ali        | yilmaz    | ertangg986@gmail.com | 017652536981234567890123456789098765 | Aa.12345 | Aa.12345         | Telephone must be between 3 and 32 characters! |
      #| ahmet      | yilmaz    | ertangg986@gmail.com | ADFDSS                               | Aa.12345 | Aa.12345         | Telephone must be between 3 and 32 characters!  |
      #| ahmet      | yilmaz    | ertangg986@gmail.com | !"§bg6                               | Aa.12345 | Aa.12345         | Telephone must be between 3 and 32 characters!  |
#iki test kaldi telefonnummer olarak harf girilemez yada Sondernzeichnen


  Scenario Outline: TC16- Negative Test- Passwortfeld sollte 4-20 Chrakters mit Ziffern,klein und groß Buchstaben und Sondernzeichnen
    Given Der Benutzer ist auf die Register page
    When Der Benutzer gibt ungültige informationen wie folgendes "<First Name>" und "<Last Name>" und "<E-Mail>" "<Telephone>" und "<Password>" und "<Password Confirm>"
    Then Fehlermeldung  überprüfen "<fehlermeldung>"
    Examples:
      | First Name | Last Name | E-Mail            | Telephone   | Password              | Password Confirm      | fehlermeldung                                 |
      | Ali        | yilmaz    | ibaqw986@gmail.com | 01765253698 | a12                   | a12                   | Password must be between 4 and 20 characters! |
      #| Ali        | yilmaz    | uqw986@gmail.com   | 01765253698 | Aa.123451457896391236zt | Aa.123451457896391236zt | Password must be between 4 and 20 characters! |

#son Test Failt 22 karakter girmrmize ragmen register oluyor







