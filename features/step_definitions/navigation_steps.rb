Given(/^I am on (.+)$/) do |page_name|
  visit path_to(page_name)
end

When(/^I visit (.+)$/) do |page_name|
  visit path_to(page_name)
end

Then(/^I should be on (.+)$/) do |page_name|
  expect(current_path).to eql(path_to(page_name))
end