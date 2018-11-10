# Temperature Tracker
###### [Date]

_You decide to test if your oddly-mathematical heating company is fulfilling its All-Time Max, Min, Mean and Mode Temperature Guarantee functions._

Write a class TempTracker with these methods:

1. `insert()` - records a new temperature
2. `get_max()` - returns the highest temp we've seen so far
3. `get_min()` - returns the lowest temp we've seen so far
4. `get_mean()` - returns the mean of all temps we've seen so far
5. `get_mode()` - returns a mode of all temps we've seen so far

---

Notes:
* Optimise for space and time. Favour speeding up the getter methods get_max(), get_min(), get_mean(), and get_mode() over speeding up the insert() method.
* `get_mean()` should return a float, but the rest of the getter methods can return integers. Temperatures will all be inserted as integers. We'll record our temperatures in Fahrenheit, so we can assume they'll all be in the range 0..1100..110.
* If there is more than one mode, return any of the modes.
