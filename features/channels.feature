Feature: create and view channels

  As a user
  So I can build a community of users with a common interest
  I can create, view, and join channels

Background: posts in database

  Given the following posts exist:
  | channel_id   | user_id  | title        | content              | votes  |
  | 1            | 1        | Doggo        | image                | 12     |
  | 1            | 2        | Dog video!   | www.dogs.com/video   | 0      |
  | 2            | 3        | Kitten       | image                | 1      |
  | 2            | 4        | Cat Link     | www.cats.com         | 3      |

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

