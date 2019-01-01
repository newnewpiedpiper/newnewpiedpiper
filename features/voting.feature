Feature: vote on posts

  As a user
  So that I can make good posts appear more often and encourage good content
  I want to vote on posts

Background: posts in database

  Given the following posts exist:
  | post_id      | channel_id   | user_id  | title        | content              | votes
  | 1            | 1            | 1        | Doggo        | image                | 12
  | 2            | 1            | 2        | Dog video!   | www.dogs.com/video   | 0
  | 3            | 2            | 3        | Kitten       | image                | 1
  | 4            | 2            | 4        | Cat Link     | www.cats.com         | 3

Scenario: upvote a post
  Given I am on the home page
  When I click the upvote arrow on a post
  Then the post upvotes increments by one
  
Scenario: downvote a post
  Given I am on the home page
  When I click the downvote arrow on a post
  Then the post upvotes decrements by one
  
Scenario: negative votes
  Given I am on the home page
  And I click the downvote arrow on the post "Dog video"
  Then I should not see the "Dog video!" post
