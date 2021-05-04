# Interview Code Exercises

## Overview

This repo contains various coding exercises to use during technical interviews. The exercises used
will vary depending on the position and level being interviewed for.

The goal of these exercises is to verify basic understanding of core concepts and to be able to
expand with further questions and discussion. These should not be "gotcha" questions or unrelated to the job.

I have example answers in private repos. Send me a request if you would like to see them.

## FizzBuzz

Used to validate basic coding skills in a specific language. The interviewee should demonstrate
understanding of basic programming logic and understanding of the basic language syntax without
looking it up.

Write a function that given an integer returns:

- Fizz if the integer is a multiple of 3
- Buzz if the integer is a multiple of 5
- FizzBuzz if the integer is a multiple of both 3 and 5
- The integer as string if the integer is not a multiple of 3 or 5

## SumIt

Used to validate basic coding skills in a specific language. The interviewee should demonstrate
understanding of basic programming logic and understanding of the basic language syntax without
looking it up.

Write a function that returns the sum of all integers between two integers. For example given 3 and 5 the return should be 12 or (3 + 4 + 5) = 12.

[SumIt Online Python Repl](https://www.online-python.com/hKpOUV7tTX)

## Game of Life

Based on [Conway's Game of Life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life).

Used to validate understanding and use of more complex data structures and edge cases.

The game of life has a grid of cells that have one of two states, alive or dead. In each step of the
game the cells are updated using a set of rules. Complete the function that updates the game board
with the next generation.

1. Any live cell with fewer than two live neighbors dies, as if by underpopulation.
2. Any live cell with two or three live neighbors lives on to the next generation.
3. Any live cell with more than three live neighbors dies, as if by overpopulation.
4. Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

## AWS Web App

Used to validate basic understanding of AWS architecture, networking, security, and basic Linux
command line.

Deploy the following web app binary in AWS and make it publicly accessible. The web app is a simple Linux
binary that has no dependencies. When run the binary will open and listen on port 8080 and respond
with "Hello world!".

[app](https://github.com/jzbruno/interview/releases/download/v1.0.0/app)

## Docker

Used to validate basic understanding of Docker containers.

Write a Dockerfile that will create a container image with a basic web application that serves traffic on port 8080 when the container is run. Open the web application in a browser to show it is working.

1. Use the [app](https://github.com/jzbruno/interview/releases/download/v1.0.0/app) binary. It can be run on Linux using the command `./app`.
2. Write a Dockerfile
3. Build the container image
4. Run the container
5. Open the web application in a browser
