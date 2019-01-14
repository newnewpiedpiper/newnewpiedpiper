Feature: vote on posts

  As a user
  So that I can make good posts appear more often and encourage good content
  I want to vote on posts

Background: posts in database

  Given the following posts exist:
  | title     | content                      | votes | user_id  | channel_id  | link                                                                                                                                                  |
  | 'Doggo'   | 'Dogs are the best animal'   | 25    | 1        | 1           | https://static.scientificamerican.com/sciam/cache/file/D059BC4A-CCF3-4495-849ABBAFAED10456_source.jpg?w=590&h=800&526ED1E1-34FF-4472-B348B8B4769AB2A1'|
  | 'Puppies' | 'Puppies are so small!       | 24    | 1        | 1           |                                                                                                                                                       |
  

  Given the following users exist:
  | name                    | email                     | username          | password        | password_confirmation   |                                                                                                                              
  | "Vinayak Chetlapalli"   | "vinayakc@tamu.edu"       | "vin_diesel"      | "laptop07"      | "laptop07"              | 
  | "Annie Blakeslee"       | "annieblakeslee@tamu.edu" | "any"             | "testpassword"  | "testpassword"          |
  | "Amanda Easter"         | "me@amandaeaster.com"     | "amandapanda"     | "testpassword"  | "testpassword"          |
  | "Reed Hampton"          | "reedbhampton@gmail.com"  | "iliketoreed"     | "testpassword"  | "testpassword"          |
  | "Omar Santos"           | "omars98@tamu.edu"        | "god_is_an_omar"  | "testpassword"  | "testpassword"          |

  Then I go to the home page
  And I follow "Sign Up"
  And I fill in "Name" with "Sample User"
  And I fill in "Email" with "sample1@gmail.com"
  And I fill in "Username" with "test_username"
  And I fill in "Password" with "password"
  And I fill in "Confirmation" with "password"
  And I click the "Create My Account" button
  Then I should see "test_username"
  
# Scenario: upvote a post
#   Given I am on the home page
#   And I follow "Doggo"
#   And I upvote