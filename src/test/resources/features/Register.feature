@register
Feature: Als Benutzer sollte ich mich registrieren können.


  Scenario: Negative Test- Mit dem leeren Formular registieren
    Given Der Benutzer ist auf die Register page
    When Der Benutzer klick continue, ohne die Pfilichtfelder auszufüllen
    Then Überprüft, dass der Benutzer sich nicht registrieren kann


  Scenario Outline: Positive Test- Pflichter Felder ausfüllen
    Given Der Benutzer ist auf die Register page
    When Der Benutzer gibt gültige informationen wie folgendes "<First Name>" und "<Last Name>" und "<E-Mail>" "<Telephone>" und "<Password>" und "<Password Confirm>"
    Then Überprüft, dass der Benutzer sich  registrieren kann
    Examples:
      | First Name | Last Name | E-Mail               | Telephone   | Password  | Password Confirm |
      | ertannnn    | yilmaz    | tertnan9866@gmail.com | 01765253698 | sS.123456 | sS.123456        |



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



  #Scenario Outline: Negative Test- sich anmelden, indem Sie falsche Struktur dee Emailadresse
   # Given Der Benutzer ist auf die Register page
   # When Der Benutzer gibt ungültige  "<E-Mail>" ein
   # Then Fehlermeldung  überprüfen
    #Examples:
     # | E-Mail     |#burdan devam
      #| j          |
      #| ja         |
      #| ja@        |
      #| jf@gm      |
      #| jf@gmail   |
      #| @gmail     |
      #| @gmail,com |
      #| @gmail.com |




  #email adresi olumsuz seneryalori
  #First Name must be between 1 and 32 characters!
  #Last Name must be between 1 and 32 characters!
#Telephone must be between 3 and 32 characters!
  #passwortla confirmation passwort karsilastir
  #Checkboxa basmadan continue de
  #daha önce alinmis bir mail adresi ile dene

