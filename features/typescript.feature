Feature: Typescript support

    Scenario: A nodemon config that includes wrong setting type
        Given the following nodemon config:
            """
            {
                noUpdateNotifier: 2,
            }
            """
        When I compile the file using typescript
        Then there should be 1 typescript issue
        And the first issue should be "Type 'number' is not assignable to type 'boolean'."

