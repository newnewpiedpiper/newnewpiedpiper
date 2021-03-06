Feature: create and view posts

  As a user
  So that I can make posts I am interested in
  I want to create and view posts and make comments on them

Background: posts in database

  Given the following posts exist:
  | title     | content                      |  user_id  | channel_id  | link                                                                                                                                                  |
  | 'Doggo'   | 'Dogs are the best animal'   |  1        | 1           | https://static.scientificamerican.com/sciam/cache/file/D059BC4A-CCF3-4495-849ABBAFAED10456_source.jpg?w=590&h=800&526ED1E1-34FF-4472-B348B8B4769AB2A1'|
  | 'Puppies' | 'Puppies are so small!       |  1        | 1           |                                                                                                                                                       |
  
  Given the following channels exist:
  | channel_name    | channel_description                     |  moderators   |
  | "memes"         | "great memes"                           | "1,2"         |

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
  And I fill in "Password confirmation" with "password"
  And I click the "Create my account" button
  Then I should see "test_username"
  
Scenario: view a post
  Given: I am following the dogs channel
  When I go to the home page
  Then I should see the post "Doggo"

Scenario: create a post
  Given I am at the home page
  When I follow "Create new post" with id "#create_post" from the sidebar
  # Then I should see "Dog"
  And I fill in "Title" with "Dog"
  And I fill in "Content" with "dogs.com"
  And I press "Create Post"
  Then I should see the post "Dog"

Scenario: edit a post
  Given I am at the home page
  When I follow "Create new post" with id "#create_post" from the sidebar
  # Then I should see "Dog"
  And I fill in "Title" with "Dog"
  And I fill in "Content" with "dogs.com"
  And I press "Create Post"
  When I follow "Edit"
  And I fill in "Title" with "Brown Doggo"
  And I press "Update Post"
  Then I should see "Brown Doggo"

Scenario: comment on a post
  Given I am viewing post with id 1
  When I fill in "comment_input" with "Cool post!"
  And I press "Add Comment"
  Then I should see "Cool post!"
  
  
Scenario: delete a comment of a post
  Given I am viewing post with id 1
  When I fill in "comment_input" with "Cool post!"
  And I press "Add Comment"
  Then I should see "Cool post!"
  When I follow "Delete"
  Then I should not see "Cool post!"
  
Scenario: view creator of a post
  Given I am viewing post with id 1
  Then I should see "vin_diesel"
  When I follow "vin_diesel"
  Then I should see "vin_diesel"

Scenario: view upvotes
  Given I am viewing post with id 1
  Then I should see "▲ 0 ▼"

Scenario: view channel
  Given I am viewing post with id 1
  Then I should see "memes"
  When I follow "memes"
  Then I should see "memes"
Scenario: deleting a post
  Given I am at the home page
  When I follow "Create new post" with id "#create_post" from the sidebar
  # Then I should see "Dog"
  And I fill in "Title" with "Dog"
  And I fill in "Content" with "dogs.com"
  And I press "Create Post"
  Then I should see "Edit"
  When I follow "Edit"
  Then I should see "Delete"
  When I follow "Delete"
  Then I should be on the home page
  And I should not see "dogs.com"