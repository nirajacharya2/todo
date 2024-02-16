Feature: Mark todo as completed
    As a user
    I want to mark a todo as completed
    so that I can know if the todo is already performed


    Background:
        Given a user opens the home page of website

    
    Scenario: Mark a todo as completed
        When a user marks an item name as "<todo>" as completed
        Then a strike through appears above the todo