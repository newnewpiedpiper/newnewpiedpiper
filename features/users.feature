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
  And I fill in "Confirmation" with "password"
  And I click the "Create My Account" button
  And I should see "test_username"

# # Scenario: can't overwrite exisiting account
# #   Given I am on the home page
# #   When I follow "Sign Up"
# #   And I fill in "Name" with "Vinayak Chetlapalli"
# #   And I fill in "Email" with "vinayakc@tamu.edu"
# #   And I fill in "Username" with "vin_diesel"
# #   And I fill in "Password" with "laptop07"
# #   And I fill in "Confirmation" with "laptop07"
# #   And I click the "Create My Account" button
# #   # And I click the "sidebar" button
# #   # And I follow "Log Out" from the sidebar
# #   # When I follow "Sign Up"
# #   # And I fill in "Name" with "Vinayak Chetlapalli"
# #   # And I fill in "Email" with "chetvins@gmail.com"
# #   # And I fill in "Password" with "password"
# #   # And I fill in "Confirmation" with "password"
# #   # And I click the "Create My Account" button
# #   Then I should see "Email has already been taken"

# Scenario: login to existing account
#   Given I am on the home page
#   When I follow "Log In"
#   And I fill in "Email" with "sample1@gmail.com"
#   And I fill in "Password" with "password"
#   And I click the "Log in" button
#   Then I should see "test_user"
  
# # Scenario: Persistent login
# #   Given: I am logged in
# #   When I close the broswer
# #   And I reopen the browswer to the website
# #   Then I should still be logged in
  
# Scenario: delete an existing account
#   Given I am on the home page
#   When I click the "Log In" button
#   And I fill in "Email" with "dogs@gmail.com"
#   And I fill in "Password" with "secret"
#   And I click the "Log In" button
#   And I click the "Account" button
#   And I click the "Delete Account" button
#   And I click "OK"
#   Then the user "dogs@gmail.com" should not exist

# Scenario: creating a bookmark
#   Given I am on the home page
#   When I click the "Bookmark" button on the post "Doggo"
#   And I press the "Account" button
#   And I click the "Bookmarks" link
#   Then I should see the post "Doggo"
  
# Scenario: removing a bookmark
#   Given I am on the bookmarks page
#   When I click the "Bookmark" button on the post "Doggo"
#   Then I should not see the post "Doggo"

