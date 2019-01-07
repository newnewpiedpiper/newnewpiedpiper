Given(/^the following posts exist:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |post|
      Post.create!(post)
  end
end

Then(/^I should see all posts$/) do
  # Make sure that all the posts in the app are visible in the table
  expect(page).to have_xpath("//tr", count: 5)
end

Then /^(?:|I )should see the post "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

When (/^I click the sidebar$/) do
 find(:css, '#sidebar').click
end

Given("I am viewing post with id {int}") do |int|
  post = Post.find_by(id: int)
  visit post_path(post)
end

Given("I am at the home page") do 
  visit root_path
end

Given("the post with id {int} was created less than {int} minutes ago") do |int, c_time|  
  post = Post.find_by(id: int)
  time = Time.new
  expect(time-post.created_at).to be <= c_time
end
