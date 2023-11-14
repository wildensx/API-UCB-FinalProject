Feature: Final Project API
  Scenario: as an user I want to verify CRUD on API Projects

    Given using token in todo.ly
    When send POST request "/api/projects.json" with body
    """
    {
      "Content":"Final Project Wilde",
      "Icon":6
    }
    """
    Then response code should be 200
    And the attribute "Content" should be "Final Project Wilde"
    And save "Id" in the variable "$ID_PROJECT"
    When send PUT request "/api/projects/$ID_PROJECT.json" with body
    """
    {
      "Content":"Final Project Wilde & A"
    }
    """
    Then response code should be 200
    And the attribute "Content" should be "Final Project Wilde & A"
    When send DELETE request "/api/projects/$ID_PROJECT.json" with body
    """
    """
    Then response code should be 200
    And the attribute "Content" should be "Final Project Wilde & A"