Feature: Automate TC for User Methods: Edit (Task ASK-179)
    #Test Set: ASK-37 User - Edit

  @User-EditName(HappyPath)
  Scenario: User can change name (Happy path)
    #Test Case: ASK-76 User - Edit - Change name (Happy path)
    When I open url "http://local.school.portnov.com:4520/#/login"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@placeholder='Email *']"
    And I type "nmas@lopeure.com" into element with xpath "//input[@placeholder='Email *']"
    Then I click on element with xpath "//input[@placeholder='Password *']"
    And I type "12345" into element with xpath "//input[@placeholder='Password *']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then I open url "http://local.school.portnov.com:4520/#/home"
    And element with xpath "//h3[contains(text(),'Janna Nicolaeva')]" should be displayed
    And I click on element with xpath "//*[contains(text(),'Settings')]"
    And I wait for 2 sec
    Then I open url "http://local.school.portnov.com:4520/#/settings"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Change Your Name')]"
    And I wait for 2 sec
    And I clear element with xpath "//input[@placeholder='New name']"
    And I type "J N" into element with xpath "//input[@placeholder='New name']"
    Then I click on element with xpath "//span[(text()='Change')]"
    And I wait for 2 sec
    Then element with xpath "//td[contains(text(),'J N')]" should be displayed
    Then I click on element with xpath "//span[contains(text(),'Change Your Name')]"
    And I clear element with xpath "//input[@placeholder='New name']"
    And I type "Janna Nicolaeva" into element with xpath "//input[@placeholder='New name']"
    Then I click on element with xpath "//span[(text()='Change')]"
    And I wait for 2 sec
    Then element with xpath "//td[contains(text(),'Janna Nicolaeva')]" should be displayed


  @User-EditPassword(HappyPath)
  Scenario: User can change password (Happy path)
    #Test Case: ASK-79 UUser - Edit - Change password (Happy path)
    When I open url "http://local.school.portnov.com:4520/#/login"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@placeholder='Email *']"
    And I type "nmas@lopeure.com" into element with xpath "//input[@placeholder='Email *']"
    Then I click on element with xpath "//input[@placeholder='Password *']"
    And I type "12345" into element with xpath "//input[@placeholder='Password *']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then I open url "http://local.school.portnov.com:4520/#/home"
    And element with xpath "//h3[contains(text(),'Janna Nicolaeva')]" should be displayed
    And I click on element with xpath "//*[contains(text(),'Settings')]"
    And I wait for 2 sec
    Then I open url "http://local.school.portnov.com:4520/#/settings"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
    And I wait for 2 sec
    Then I click on element with xpath "//input[@placeholder='Password']"
    And I type "12345" into element with xpath "//input[@placeholder='Password']"
    Then I click on element with xpath "//input[@placeholder='New Password']"
    And I type "qwert" into element with xpath "//input[@placeholder='New Password']"
    Then I click on element with xpath "//input[@placeholder='Confirm New Password']"
    And I type "qwert" into element with xpath "//input[@placeholder='Confirm New Password']"
    Then I click on element with xpath "//span[(text()='Change')]"
    And I wait for 2 sec
    Then I click on element with xpath "//*[contains(text(),'Log Out')]"
    And I click on element with xpath "//span[contains(text(),'Log Out')]"
    And I wait for 3 sec
    Then I open url "http://local.school.portnov.com:4520/#/login"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@placeholder='Email *']"
    And I type "nmas@lopeure.com" into element with xpath "//input[@placeholder='Email *']"
    Then I click on element with xpath "//input[@placeholder='Password *']"
    And I type "qwert" into element with xpath "//input[@placeholder='Password *']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then I open url "http://local.school.portnov.com:4520/#/home"
    And element with xpath "//h3[contains(text(),'Janna Nicolaeva')]" should be displayed
    And I click on element with xpath "//*[contains(text(),'Settings')]"
    And I wait for 2 sec
    Then I open url "http://local.school.portnov.com:4520/#/settings"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
    And I wait for 2 sec
    Then I click on element with xpath "//input[@placeholder='Password']"
    And I type "qwert" into element with xpath "//input[@placeholder='Password']"
    Then I click on element with xpath "//input[@placeholder='New Password']"
    And I type "12345" into element with xpath "//input[@placeholder='New Password']"
    Then I click on element with xpath "//input[@placeholder='Confirm New Password']"
    And I type "12345" into element with xpath "//input[@placeholder='Confirm New Password']"
    Then I click on element with xpath "//span[(text()='Change')]"
    And I wait for 2 sec












