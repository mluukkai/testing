Feature: Codebreaker submits a guess

  Scenario Outline:
    Given the secret code is "<code>"
    When I guess "<guess>"
    Then the mark should be "<mark>"

    Scenarios: no matches
    |code|guess|mark|
    |1234|5555 |    |


    Scenarios: one number correct
    |code|guess|mark|
    |1234|1555 |+   |
    |1234|2555 |-   |

    Scenarios: two numbers correct
    |code|guess|mark|
    |1234|1255 |++  |
    |1234|1355 |+-  |
    |1234|2155 |--  |

    Scenarios: three numbers correct
    |code|guess|mark|
    |1234|1235 |+++ |
    |1234|1354 |++- |
    |1234|1325 |+-- |
    |1234|2315 |--- |
    
    Scenarios: four numbers correct
    |code|guess|mark|
    |1234|1234 |++++|
    |1234|4231 |++--|
    |1234|1423 |+---|
    |1234|2341 |----|

  Scenarios: match with duplicates
    |code|guess|mark|
    |1234|1155 |+   |
    |1234|5115 |-   |
    |1134|1155 |++  |
    |1134|5115 |+-  |
    |1134|5511 |--  |
    |1134|1115 |++  |
    |1134|5111 |+-  |