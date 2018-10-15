Feature: Create Category
  As a blog administrator
  To add blogging categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the Categories page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I fill in "category_permalink" with "gg"
    And I fill in "category_description" with "desc"
    And I press "Save"
    Then I should see "Foobar"
    Then I should see "Lorem Ipsum"
    Then I should see "gg"
    Then I should see "desc"
    
    Then I follow "Foobar"
    When I fill in "category_name" with "Foobar123"
    And I fill in "category_keywords" with "Lorem Ipsum123"
    And I fill in "category_permalink" with "gg123"
    And I fill in "category_description" with "desc123"
    And I press "Save"
    Then I should see "Foobar123"
    Then I should see "Lorem Ipsum123"
    Then I should see "gg123"
    Then I should see "desc123"    