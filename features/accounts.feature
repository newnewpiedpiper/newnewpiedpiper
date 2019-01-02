Feature: user accounts

  As a user
  So that I can track interests and make posts
  I want to make an account

Background: posts in database

  Given the following users exist:
  | user_id      | username       | email                | password
  | 1            | newintown      | newin@gmail.com      | XXXXXX
  | 2            | dogsrcool      | dogsdogs@gmail.com   | XXXXXX
  | 3            | puppypal       | usern@gmail.com      | XXXXXX
  | 4            | explorer8878   | travelr@gmail.com    | XXXXXX

Scenario: create a new account
  Given I am on the home page
  When I click the "Login" button
  And I click the "Create New Account" button
  And I fill in "Email" with "dogs@gmail.com"
  And I fill in "Password" with "secret"
  And I press the "Next" button
  And I fill in "Username" with "dogs_are_life"
  And I press "Submit"
  Then I should see the account page
  
Scenario: login to existing account
  Given I am on the home page
  When I click the "Login" button
  And I fill in "Email" with "dogs@gmail.com"
  And I fill in "Password" with "secret"
  And I press the "Login" button
  Then I should see my home page
  
Scenario: delete an existing account
  Given I am on the home page
  When I click the "Login" button
  And I fill in "Email" with "dogs@gmail.com"
  And I fill in "Password" with "secret"
  And I press the "Login" button
  And I press the "Account" button
  And I select the "Delete Account" button
  And I select "OK"
  Then the user "dogs@gmail.com" should not exist
  
Scenario: change username of existing account
  Given I am on the home page
  When I click the "Login" button
  And I fill in "Email" with "dogs@gmail.com"
  And I fill in "Password" with "secret"
  And I press the "Login" button
  And I press the "Account" button
  And I fill in "Username" with "newdogwhodis"
  And I press the "Update" button
  Then "Username" should read "newdogwhodis"
  
Scenario: creating a bookmark
  Given I am on the home page
  When I click the "Bookmark" button on the post "Doggo"
  And I press the "Account" button
  And I click the "Bookmarks" link
  Then I should see the post "Doggo"
  
Scenario: removing a bookmark
  Given I am on the bookmarks page
  When I click the "Bookmark" button on the post "Doggo"
  Then I should not see the post "Doggo"
