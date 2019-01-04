Feature: create and view posts

  As a user
  So that I can make posts I am interested in
  I want to create and view posts

Background: posts in database

  Given the following posts exist:
  | title         | content                     | votes   | user_id | channel_id  | link                                                                                                                                                      |
  | 'Doggo'       | 'Dogs are the best animal'  | 25      | 1       | 1           | 'https://static.scientificamerican.com/sciam/cache/file/D059BC4A-CCF3-4495-849ABBAFAED10456_source.jpg?w=590&h=800&526ED1E1-34FF-4472-B348B8B4769AB2A1'   |
  | 'Puppies'     | 'Puppies are so small!'     | 24      | 2       | 2           |                                                                                                                                                           |
  | 'Cat'         | 'Cats are the best animal'  | 24      | 2       | 2           | 'https://r.hswstatic.com/w_907/gif/tesla-cat.jpg'                                                                                                         |
  | 'Funny Cats'  | 'Cats are really funny'     | 28      | 2       | 2           |                                                                                                                                                           |

Scenario: view a post
  Given: I am following the dogs channel
  When I go to the home page
  Then I should see the post "Doggo"

Scenario: create a post
  Given I am on the dogs channel page
  When I click the add post button
  And I fill in "Title" with "Dog"
  And I fill in "Content" with "dogs.com"
  And I press "Post"
  Then I should see the post "Dog"

Scenario: edit a post
  Given I am on the "Doggo" post page
  And I am the creator of the "Doggo" post
  And the "Doggo" post was created less than 5 minutes ago
  When I click the edit post button
  And I fill in "Title" with "New Title"
  And I press "Save Changes"
  Then I should be on the "Doggo" post page
  And I should see "New Title"

Scenario: tagging a post
  Given I am on the dogs channel page
  When I click the add post button
  And I fill in "Title" with "New Dog"
  And I fill in "Content" with "newdogs.com"
  And I fill in "Tags" with "dog, puppy, cute, little"
  And I press "Post"
  When I search "cute little puppy"
  Then I should see the post "New Dog"

