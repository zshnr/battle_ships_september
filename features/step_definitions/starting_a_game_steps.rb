Given(/^I am on the homepage$/) do
	visit '/'
end

When(/^I follow "(.*?)"$/) do |link|
  click_on "New Game"
end

Then(/^I should see "What's your name\?$/) do
  expect(page).to have_content "What's your name?"
end

Given(/^I am on the New Game page$/) do
  visit '/new_game'
end

When(/^I provide my "(.*?)" as "(.*?)"$/) do |field, name|
	fill_in field, with: name
end


When(/^click the "(.*?)" button$/) do |text|
  click_button text
end

Then(/^it should show my board$/) do
  expect(page).to have_content "A1"
end

When(/^I fail to provide my "(.*?)"$/) do |field|
  	fill_in field, with: ''
end

Then(/^it should take me to an error page$/) do
	visit '/new_game'
end