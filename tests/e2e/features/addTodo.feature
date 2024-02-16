Feature: Add todos
    As a user
    I want to add a todo with a  tag in the todo list
    So that I can manage all of my tasks properly

    Background:
        Given the user opens the home page of website


    Scenario Outline: Add todo with a tag in the todo list
        When a user adds an item name as "<todo>"
        And  a user adds a tag name as "<tag>"
        Then todo with name as "<todo>" and tag as "<tag>" should be displayed at last in the todo list
        Examples:
            | todo           | tag        |
            | run 20 meters  | exercise  |
            | study 2 hours  |           |


    Scenario: Adding an empty todo
        When a user adds todo with following details
            | todo | tag      |
            |      |          |
            |      | exercise |
        Then no todo is added in the list