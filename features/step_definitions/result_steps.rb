Then(/^I should see "([^\"]*)"$/) do |text|
  expect(page).to have_text(text)
end

Then(/^I should not see "([^\"]*)"$/) do |text|
  expect(page).to_not have_text(text)
end

Then(/^I should see the link "([^\"]*)"$/) do |link|
  expect(page).to have_link(link)
end

Then(/^I should not see the link "([^\"]*)"$/) do |link|
  expect(page).to_not have_link(link)
end

Then(/^I should see the field "([^\"]*)"$/) do |field|
  expect(page).to have_field(field)
end

Then(/^I should see the button "([^\"]*)"$/) do |button|
  expect(page).to have_button(button)
end

Then(/^The page should have "([^\"]*)" message "([^\"]*)"$/) do | element, text|
  expect(page).to have_css("#{element}", text: text, visible: true)
end

Then /^the "([^\"]*)" field should contain "([^\"]*)"$/ do |field, value|
  find_field(field).value.should =~ /#{value}/
end

Then /^the "([^\"]*)" field should not contain "([^\"]*)"$/ do |field, value|
  find_field(field).value.should_not =~ /#{value}/
end

Then /^the "([^\"]*)" checkbox should be checked$/ do |label|
  find_field(label).should be_checked
end

Then /^the "([^\"]*)" checkbox should not be checked$/ do |label|
  find_field(label).should_not be_checked
end