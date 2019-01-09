When("I click the {string} button") do |string|
    click_on "#{string}"
end

Then("I should see user profile page for {string}") do |string|
    visit "/user/#{string}"
end 

Then("I should see a {string} flash") do |string|
    page.should have_css('.flashnotice', text: "#{string}")
end

Then("I should see a {string} error") do |string|
    expect(page).to have_content("#{string}")
end 
