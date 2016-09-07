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

Then(/^The page should have "([^\"]*)" message "([^\"]*)"$/) do | element, text|
  expect(page).to have_css("#{element}", text: text, visible: true)
end