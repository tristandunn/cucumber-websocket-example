Feature: Visitor creates a user

  @javascript
  Scenario: Visitor creates a user successfully with another user is online
    Given a user named "Sue" is online
    And I go to the homepage
    When I fill in "Name" with "Bob"
    And I submit the new user form
    Then I should be on the users page
    And Sue should see "Bob has entered the room."
