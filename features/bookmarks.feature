Feature: bookmark posts

  As a user
  So I can find a post again
  I can bookmark posts

Background: bookmarked posts in database
  | post_id      | channel_id   | user_id  | title        | content              | votes
  | 1            | 1            | 1        | Doggo        | image                | 12
  | 2            | 1            | 2        | Dog video!   | www.dogs.com/video   | 0
  | 3            | 2            | 3        | Kitten       | image                | 1
  | 4            | 2            | 4        | Cat Link     | www.cats.com         | 3

Scenario: bookmark a post
  Given: I want to save a Kitten post
  When I bookmark "Kitten"
  Then "Kitten" post should save
  
Scenario: view my bookmarks
  Given: I bookmarked a Kitten post
  When I go My Bookmarks
  Then I should see the post "Kitten"
