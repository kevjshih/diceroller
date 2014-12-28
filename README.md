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
6d rolls: 4
sum: 	  4
2d6
6d rolls: 2 1
sum: 	  3
1d6+2d4
6d rolls: 1
4d rolls: 3 1
sum: 	  5
3d6+5d3+4+1
6d rolls: 4 4 3
3d rolls: 3 1 1 1 1
sum: 	  23
1+3
sum:	4
3d5-2
5d rolls: 2 4 3
sum: 	  7
```
Where the first of every 3 lines is the user input.