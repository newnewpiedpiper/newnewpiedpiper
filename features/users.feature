Feature: create and login into a user
  As a user
  So that I can keep track of profile
  I can sign up and login into my user profile 

Scenario: create a new User
  Given I am on the home page
  When I click the "Sign Up" button
  And I fill in "Name" with "Sample Name"
  And I fill in "Email" with "sample1@gmail.com"
  And I fill in "Password" with "password"
  And I fill in "Confirmation" with "password"
  And I click the "Create My Account" button
  Then I should see user profile page for "Sample_Name"
  And I should see a "Welcome to the Sample App!" flash

Scenario: cant overwrite exisiting account
  Given I am on the home page
  When I click the "Sign Up" button
  And I fill in "Name" with "Vinayak Chetlapalli"
  And I fill in "Email" with "chetvins@gmail.com"
  And I fill in "Password" with "password"
  And I fill in "Confirmation" with "password"
  And I click the "Create My Account" button
  And I click the "Sling" button
  When I click the "Sign Up" button
  And I fill in "Name" with "Vinayak Chetlapalli"
  And I fill in "Email" with "chetvins@gmail.com"
  And I fill in "Password" with "password"
  And I fill in "Confirmation" with "password"
  And I click the "Create My Account" button
  Then I should see a "Email has already been taken" error

Scenario: login to existing account
  Given I am on the home page
  When I click the "Login" button
  And I fill in "Email" with "chetvins@gmail.com"
  And I fill in "Password" with "laptop07"
  And I click the "Log in" button
  Then I should see user profile page for "Vinayak_Chetlapalli"
  
Scenario: Persistent login
  Given: I am logged in
  When I close the broswer
  And I reopen the browswer to the website
  Then I should still be logged in
  
Scenario: delete an existing account
  Given I am on the home page
  When I click the "Login" button
  And I fill in "Email" with "dogs@gmail.com"
  And I fill in "Password" with "secret"
  And I click the "Login" button
  And I click the "Account" button
  And I click the "Delete Account" button
  And I click "OK"
  Then the user "dogs@gmail.com" should not exist

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

