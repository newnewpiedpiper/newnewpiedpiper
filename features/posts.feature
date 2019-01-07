Feature: create and view posts

  As a user
  So that I can make posts I am interested in
  I want to create and view posts

Background: posts in database

  Given the following posts exist:
  | title     | content                      | votes | user_id  | channel_id  | link                                                                                                                                                  |
  | 'Doggo'   | 'Dogs are the best animal'   | 25    | 1        | 1           | https://static.scientificamerican.com/sciam/cache/file/D059BC4A-CCF3-4495-849ABBAFAED10456_source.jpg?w=590&h=800&526ED1E1-34FF-4472-B348B8B4769AB2A1'|
  | 'Puppies' | 'Puppies are so small!       | 24    | 1        | 1           |                                                                                                                                                       |
  #   	 {:title => 'Cat', :content=> 'Cats are the best animal', :votes => '24', :user_id => '2', :channel_id => '2', :link =>'https://r.hswstatic.com/w_907/gif/tesla-cat.jpg'},
  # 	   {:title => 'Funny Cats', :content=> 'Cats are really funny', :votes => '28', :user_id => '2', :channel_id => '2'

Scenario: view a post
  Given: I am following the dogs channel
  When I go to the home page
  Then I should see the post "Doggo"

Scenario: create a post
  Given I am at the home page
  When I follow "Create new post" from the sidebar
  # Then I should see "Dog"
  And I fill in "Title" with "Dog"
  And I fill in "Content" with "dogs.com"
  And I press "Create Post"
  Then I should see the post "Dog"

Scenario: edit a post
  Given I am viewing post with id 1
  # And I am the creator of the "Doggo" post
  And the post with id 1 was created less than 5 minutes ago
  When I follow "Edit"
  And I fill in "Title" with "Brown Doggo"
  And I press "Update Post"
  Then I should see "Brown Doggo"