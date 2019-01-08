Feature: create and view channels

  As a user
  So I can build a community of users with a common interest
  I can create, view, and join channels

Background: posts in database

  Given the following posts exist:
  | title     | content                      | votes | user_id  | channel_id  | link                                                                                                                                                  |
  | 'Doggo'   | 'Dogs are the best animal'   | 25    | 1        | 1           | https://static.scientificamerican.com/sciam/cache/file/D059BC4A-CCF3-4495-849ABBAFAED10456_source.jpg?w=590&h=800&526ED1E1-34FF-4472-B348B8B4769AB2A1'|
  | 'Puppies' | 'Puppies are so small!       | 24    | 1        | 1           |                                                                                                                                                       |
  

Background: channels in database

  Given the following channels exist:
  | channel_name  | channel_description      | channel_guidelines  | moderators   |
  | dogs          | "All dogs all the time"  | 'Don\'t post cats!' | 1            | 
  | cats          | "A channel for cats"     | 'Don\'t post dogs!' | 2            | 
  
Scenario: view a channel
  Given: I am on the home page
  When I click on the post "Doggo"
  And I click on the channel link
  Then I should see the channel page for "dogs"

Scenario: create a channel
  Given I am on home page
  When I follow the "Account" link
  And I click the "Add Channel" button
  And I fill in "Title" with "pigs"
  And I fill in "Channel Guidlines" with "Just post pigs!"
  And I press the "Create" button
  Then I should see the channel page for "pigs"

Scenario: subscribe to a channel
  Given I am on the "dog" channel page
  When I click the "Subscribe" button
  Then I should see "Subscribed"

Scenario: moderate a channel
  Given I am on the dogs channel page
  And I am a moderator
  When I click the post "Doggo"
  And I click the "Remove" button
  Then I should be on the dogs channel page
  Then I should not see the post "Doggo"

