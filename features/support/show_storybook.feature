Feature: List storybooks

  Background:
    Given the following storybooks:
      |        title      |     cover      |        intro      |      body        |
      | Storybook 1 Title | storybook1.jpg | Storybook 1 intro | Storybook 1 body |
      | Storybook 2 Title | storybook2.jpg | Storybook 2 intro | Storybook 2 body |
      | Storybook 3 Title | storybook3.jpg | Storybook 3 intro | Storybook 3 body |

  Scenario: List all storybooks
    Given I am on the storybooks page

    When I click "Storybook 1 Title"

    Then I should be on the storybook page



