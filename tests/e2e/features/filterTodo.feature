Feature: Filter todos
    As a user
    I want to filter todos by all, completed and uncompleted
    So that I can know the status of todos

    Background:
        Given the user opens the home page of website
        

    Scenario: Filter todos with option "All"
        Given Atleast one item has been added in the list
        When User filter todos by choosing "All" option
        Then all todos should be displayed in the list

    Scenario: Filter todos with option "Completed"
        When User filter todos by choosing "Completed" option
        Then only completed todos should be displayed in the list

    Scenario: Filter todos with option "Uncompleted"
        When User filter todos by choosing "Uncompleted" option
        Then only uncompleted todos should be displayed in the list
        
    Scenario: Filter todos with option "All"
        Given user has added an item "run 10" in the todo list
        And user has added an item "run 20" in the todo list
        When User filter todos by choosing "All" option
        Then item "run 10" should be displayed in the list
        And item "run 20" should be displayed in the list


    Scenario: Filter todos with option "All"
        Given user has added the following items
            | todo   |
            | todo-0 |
            | todo-1 |
        When User filter todos by choosing "All" option
        Then following items should be displayed in the list
            | todo   |
            | todo-0 |
            | todo-1 |


    Scenario: Filter todos with option "Completed"
        Given user has added the following items
            | todo   |
            | todo-0 |
            | todo-1 |
        And user has marked the item "todo-0" as completed
        When User filter todos by choosing "Completed" option
        Then following item should be displayed in the list
            | todo   |
            | todo-0 |

    Scenario: Filter todos with option "Uncompleted"
        Given user has added the following items
            | todo   |
            | todo-0 |
            | todo-1 |
        And user has marked the item "todo-0" as completed
        When User filter todos by choosing "Uncompleted" option
        Then the following item should not be displayed in the list
            | todo   |
            | todo-0 |