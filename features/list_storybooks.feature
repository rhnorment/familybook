Feature: List storybooks

  Background:
    Given the following storybooks:
    |    title    |     cover      |        intro      |      body        |
    | Storybook 1 | storybook1.jpg | Storybook 1 intro | Storybook 1 body |
    | Storybook 2 | storybook2.jpg | Storybook 2 intro | Storybook 2 body |
    | Storybook 3 | storybook3.jpg | Storybook 3 intro | Storybook 3 body |

  Scenario: List all storybooks
    When I visit the storybooks page

    Then The page should have "h2" message "All storybooks"

    And I should see "Storybook 1"
    And I should see "Storybook 1 intro"
    And I should see "Storybook 1 body"

    And I should see "Storybook 2"
    And I should see "Storybook 2 intro"
    And I should see "Storybook 2 body"

    And I should see "Storybook 3"
    And I should see "Storybook 3 intro"
    And I should see "Storybook 3 body"

