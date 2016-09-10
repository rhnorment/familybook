Feature: Create storybooks

  @current
  Scenario: Form controls
    Given I am on the storybooks page

    When I click "Create new storybook"

    Then I should be on the new storybook page
      And The page should have "h2" message "Create new storybook"
      And I should see the field "Title"
      And I should see the field "Cover"
      And I should see the field "Intro"
      And I should see the button "Create new storybook"

  Scenario: Valid storybook
    Given I am on the new storybook page


  Scenario: Invalid storybook