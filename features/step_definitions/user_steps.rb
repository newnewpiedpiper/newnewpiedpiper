When("I click the {string} button") do |string|
    click_on "#{string}"
end

Then("I should see user profile page for {string}") do |string|
    visit "/users/#{string}"
end 

Then("I should see a success flash") do
    expect(flash[:success]).to be_present
end

Then("I should see a {string} error") do |string|
    expect(page).to have_content("#{string}")
end 
