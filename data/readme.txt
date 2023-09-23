Maze generation uses the DFS algorithm. It goes as far as it can, then backtracks and goes as far as it can and recursively keeps doing that until it reaches the start, where it's ended.
Only works in versions where /random has been implemeneted

Use /function testing:plusdimension and /function testing:minusdimension to change size
Or use /scoreboard players set xAxis maze, /scoreboard players set yAxis maze, and /scoreboard players set constant maze to the same number to change it manually
Then run /function testing:maze or /function testing:mazerand

When running /function testing:maze, size can be from 2x2 to 17x17. This algorithm guarantees a path to go, which takes up more functions but guarantees it works.
/function testing:mazerand is able to go from 2x2 to 23x23. It uses a randomized algorithm to determine the path to take, which generally succeeds faster than the nonrandomized version, so it can use less lines.
Maze block can be changed in the emptystruct function