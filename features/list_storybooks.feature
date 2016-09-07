Feature: List storybooks

  Background:
    Given the following storybooks:
    |        title      |     cover      |        intro      |      body        |
    | Storybook 1 Title | storybook1.jpg | Storybook 1 intro | Storybook 1 body |
    | Storybook 2 Title | storybook2.jpg | Storybook 2 intro | Storybook 2 body |
    | Storybook 3 Title | storybook3.jpg | Storybook 3 intro | Storybook 3 body |

  Scenario: List all storybooks
    Given I am on the storybooks page

    Then The page should have "h2" message "All Storybooks"

    And I should see "Storybook 1 Title"
    And I should see "storybook1.jpg"
    And I should see "Storybook 1 intro"
    And I should see "Storybook 1 body"

    And I should see "Storybook 2 Title"
    And I should see "storybook2.jpg"
    And I should see "Storybook 2 intro"
    And I should see "Storybook 2 body"

    And I should see "Storybook 3 Title"
    And I should see "storybook3.jpg"
    And I should see "Storybook 3 intro"
    And I should see "Storybook 3 body"





