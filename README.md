# TennisKata
Each player can have either of these points in one game: 0, 15, 30 or 40
If you have 40 and you win the ball you win the game, however there are special rules:
If both players have 40, the players are deuce a. If the game is in deuce, the winner of a ball will have advantage and game ball b. If the player with advantage wins the ball he wins the game c. If the player without advantage wins they are back at deuce Each time a player scores a point, the system is notified. The system keeps track of the points, and calls the score in a manner peculiar to tennis:
In written form, scores are separated by a dash when called ("15-30", "40-15" etc.)
When scores are equal, special calls are made: a. 15-15 is called "15-all" b. 30-30 is called "30-all" c. 40-40 is called "deuce"
Scores beyond deuce are called as "advantage player X"
Victory is called as "game player X"

The User should give as input a sequence of points for both players.
player 1 would have A as point and player 2 B as a point.

Examples Point Score Sequence (A = player A scores, B = player B scores) Expected Score Call A 15-love AA 30-love AAA 40-love AAAA game player A BB love-30 ABAB 30-all AAABBB deuce AAABBBA advantage player A AAABBBABBB game player B

