Feature: Add todos
    As a user
    I want to add a todo with a  tag in the todo list
    So that I can manage all of my tasks properly


    Background:
        Given a user opens the home page of website


    Scenario: Add todo with it's tag in the todo list
        When a user adds an item name as "<todo>"
        And  a user adds a tag name as "<tag>"
        Then todo with name as "<todo>" and tag as <"tag"> should be displayed at last in the todo list
        And todo should be saved in the local storage
        Examples:
            |todo           |tag        |
            |run 20 meters  | exercise  |
            |study 2 hours  |           |


    Scenario: Delete todo in the todo list
        When a user deletes a todo with name as "<todo>" from a todo list
        Then the todo along with tag name as <"tag"> should be removed from the list


    Scenario: Adding an empty todo
        When a user add todo with following details
            |todo           |tag         |
            |               |            |
            |               |exercise    |
        Then do nothing