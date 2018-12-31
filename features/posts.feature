Feature: create and view posts

  As a user
  So that I can make posts I am interested in
  I want to create and view posts

Background: posts in database

  Given the following posts exist:
  | post_id      | title        | 
  | 1            | Doggo        |
  | 2            | Video        | 
  | 3            | Cat          | 
  | 4            | Picture      | 

Scenario: view a post
  Given: I am following the dogs channel
  When I go to the home page
  Then I should see the post <post id>

Scenario: create a post
  Given I am on the dogs channel page
  When  I click the add post button
  And I fill in "Title" with "Dog"
  And 

Scenario: edit a post
  Given I am on a post page
  And I am the creator
  And it was created less than 5 minutes ago
  When I click the edit post button
  And I fill in "Title" with "New Title"
  And I press "Save Changes"
  Then I should be on the post page
  And I should see "New Title"

