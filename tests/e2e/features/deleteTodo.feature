Feature: Delete a todo
    As a user 
    I want to delete a todo
    So that uncessary todos are not further in the list


    Background:
        Given a user opens the home page of website


    Scenario: Delete a todo with it's tag 
        Given Todo with the following detials is present in the list
            |todo           |tag        |
            |run 20 meteres |exercise   |
        When User deletes an item with name as "<todo>" and tag as "<tag>"
        Then that todo should be removed from the todo list