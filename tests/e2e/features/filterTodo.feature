Feature: Filter todos
    As a user
    I want to filter todos by all, completed and uncompleted
    So that I can know the status of todos
    

    Background:
        Given a user opens the home page of website
        

    Scenario: List todos filtered by option of either "All" or "Completed" or "Uncompleted"
        When a user filter todos by choosing "All" option
        Then all todos should be displayed in the list
        When a user filter todos by choosing "Completed" option
        Then only completed todos should be displayed in the list
        When a user filter todos by choosing "Uncompleted" option
        Then only uncompleted todos should be displayed in the list
        

