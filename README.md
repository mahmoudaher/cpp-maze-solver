# C++ Maze Solver

A C++ maze-solving project for a Data Structures assignment.

The program reads a maze from `Harita.txt` and searches for a path from the starting position to the exit. It uses a linked-list stack to remember visited positions and applies backtracking when the current path cannot continue.

## Project Structure

- `include/Konum.hpp`: Position and direction definitions.
- `include/Stack.hpp`: Generic linked-list stack implementation.
- `include/Labirent.hpp`: Maze class declaration.
- `src/Konum.cpp`: Position movement operations.
- `src/Labirent.cpp`: Maze loading, movement, display, and collision checks.
- `src/Main.cpp`: Program entry point and maze-solving loop.
- `Harita.txt`: Maze input file.
- `makefile`: Build and run commands.

## Requirements

- Windows
- MinGW g++
- GNU Make

The code uses Windows-specific functions such as `Sleep()` and `system("cls")`.

## Build and Run

Open a terminal in the project directory and run:

```bash
make
```

Or run the steps separately:

```bash
make derle
make calistir
```

The executable is generated at `bin/Main`. Keep `Harita.txt` in the working directory when running the program.

## Algorithm

The solver tries available directions while avoiding walls and already visited cells. Each successful move is pushed onto the stack. When no direction is available, the latest position is popped and the solver backtracks until it finds another possible route.