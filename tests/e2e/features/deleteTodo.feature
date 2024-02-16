Feature: Delete a todo
    As a user 
    I want to delete a todo
    So that unncessary todos are not in the list


    Scenario: Delete a todo item
        Given Atleast one todo with following details has been added in the list
            | todo | tag |
            | xyz  | abc |
        When User deletes an item with todo "xyz" 
        Then that item with todo "xyz" should be removed from the list