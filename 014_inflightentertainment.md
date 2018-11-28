# In-Flight Entertainment
###### [Date]

You've built an inflight entertainment system with on-demand movie streaming.

Users on longer flights like to start a second movie right when their first one ends, but they complain that the plane usually lands before they can see the ending. So you're building a feature for choosing two movies whose total runtimes will equal the exact flight length.

**Write a method that takes an integer flight_length (in minutes) and an array of integers movie_lengths (in minutes) and returns a boolean indicating whether there are two numbers in movie_lengths whose sum equals flight_length.**

When building your method:
* Assume your users will watch exactly two movies
* Don't make your users watch the same movie twice
* Optimise your runtime over memory

---

Notes:
Remember: your users shouldn't watch the same movie twice. Are you sure your method won’t give a false positive if the array has one element that is half `flight_length`?
