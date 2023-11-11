Feature: Final Project API
  Scenario: as an user I want to verify CRUD on API Projects

    Given using token in todo.ly
    When send POST request "/api/projects.json" with body
    """
    {
      "Content":"WV Final Project 1",
      "Icon":1
    }
    """
    Then response code should be 200
    And the attribute "Content" should be "Cucumber"
    And save "Id" in the variable "$ID_PROJECT"
    When send PUT request "/api/projects/$ID_PROJECT.json" with body
    """
    {
      "Content":"WV Final Project 2"
    }
    """
    Then response code should be 200
    And the attribute "Content" should be "WV Final Project 2"
    When send DELETE request "/api/projects/$ID_PROJECT.json" with body
    """
    """
    Then response code should be 200
    And the attribute "Content" should be "WV Final Project 2"