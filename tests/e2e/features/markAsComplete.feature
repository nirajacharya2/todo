Feature: Mark todo as completed
    As a user
    I want to mark a todo as completed
    So that I can know if the todo is done already


    Background:
        Given the user opens the home page of website

    
    Scenario: Mark a todo as completed
        When User marks a todo as completed
        Then a strike through appears above the todo