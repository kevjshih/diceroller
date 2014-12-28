# Installation
This project creates a standalone binary. As long as you have Flex and Bison installed, you should be able to compile with make on a unix-based system

# Usage
After compiling, there should be a binary in the directory named 'dice'. Execute it with
```
./dice
```
Example usage:
```
1d6
d6 rolls: 6
sum: 	  6
4d6
d6 rolls: 3 5 3 6
sum: 	  17
1d6+2d6+3d5
d6 rolls: 2
d6 rolls: 3 4
d5 rolls: 3 5 4
sum: 	  21
3d6+3
d6 rolls: 3 2 3
sum: 	  11
1+4
sum:	5
1d6-3+4+3d5
d6 rolls: 4
d5 rolls: 2 5 3
sum: 	  15
```
Where the first of every 3 lines is the user input. The parser currently supports + and - operators only.