Feature: create and login into a user
  As a user
  So that I can keep track of profile
  I can sign up and login into my user profile 

Background: users in database

  Given the following users exist:
  | name                    | email                     | username          | password        | password_confirmation   |                                                                                                                             
  | "Vinayak Chetlapalli"   | "vinayakc@tamu.edu"       | "vin_diesel"      | "laptop07"      | "laptop07"          | 
  | "Annie Blakeslee"       | "annieblakeslee@tamu.edu" | "any"             | "testpassword"  | "testpassword"          |
  | "Amanda Easter"         | "me@amandaeaster.com"     | "amandapanda"     | "testpassword"  | "testpassword"          |
  | "Reed Hampton"          | "reedbhampton@gmail.com"  | "iliketoreed"     | "testpassword"  | "testpassword"          |
  | "Omar Santos"           | "omars98@tamu.edu"        | "god_is_an_omar"  | "testpassword"  | "testpassword"          |

Scenario: create a new User
  Given I am on the home page
  When I follow "Sign Up"
  And I fill in "Name" with "Sample User"
  And I fill in "Email" with "sample1@gmail.com"
  And I fill in "Username" with "test_username"
  And I fill in "Password" with "password"
  And I fill in "Password confirmation" with "password"
  And I click the "Create my account" button
  And I should see "test_username"

Scenario: can't overwrite exisiting account
  # Given I am on the home page
  # When I follow "Sign Up"
  # And I fill in "Name" with "Vinayak Chetlapalli"
  # And I fill in "Email" with "vinayakc@tamu.edu"
  # And I fill in "Username" with "vin_diesel"
  # And I fill in "Password" with "laptop07"
  # And I fill in "Password confirmation" with "laptop07"
  # And I click the "Create my account" button
  # # And I click the "sidebar" button
  # And I follow "Log Out" with id "log_out" from the sidebar
  # When I follow "Sign Up"
  # And I fill in "Name" with "Vinayak Chetlapalli"
  # And I fill in "Email" with "chetvins@gmail.com"
  # And I fill in "Password" with "password"
  # And I fill in "Password confirmation" with "password"
  # And I click the "Create my account" button
  # Then I should see "Email has already been taken"

Scenario: login to existing account
  Given I am on the home page
  When I follow "Sign Up"
  And I fill in "Name" with "Sample User"
  And I fill in "Email" with "sample1@gmail.com"
  And I fill in "Username" with "test_username"
  And I fill in "Password" with "password"
  And I fill in "Password confirmation" with "password"
  And I click the "Create my account" button
  And I should see "test_username"
  When I follow "Log Out" with id "#log_out" from the sidebar
  When I follow "Log In"
  And I fill in "Email" with "sample1@gmail.com"
  And I fill in "Password" with "password"
  And I press "Log in"
  Then I should see "test_username"
 