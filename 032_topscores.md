# Top Scores
#### [Date]

You created a game that is more popular than Angry Birds.

Each round, players receive a score between 0 and 100, which you use to rank them from highest to lowest. You need a faster sorting algorithm, as players are complaining that their rankings aren't updated fast enough.

**Write a method that takes the following and returns a sorted array of scores efficiently.**
1. an array of unsorted_scores
2. the highest_possible_score in the game

For example:
```
unsorted_scores = [37, 89, 41, 65, 91, 53]
HIGHEST_POSSIBLE_SCORE = 100

sort_scores(unsorted_scores, HIGHEST_POSSIBLE_SCORE)
# returns [91, 89, 65, 53, 41, 37]
```

We’re defining `n` as the number of unsorted_scores because we’re expecting the number of players to keep climbing.

And, we'll treat highest_possible_score as a constant instead of factoring it into our big O time and space costs because the highest possible score isn’t going to change. Even if we do redesign the game a little, the scores will stay around the same order of magnitude.

---

Notes:
Multiple players can have the same score! If 10 people got a score of 90, the number 90 should appear 10 times in our output array.
