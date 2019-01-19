class GameOfLife(object):
    board = []

    def __init__(self, seed_board):
        self.board = seed_board

    # Conway's Game of Life https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life
    #
    # The game board is a grid of cells that can have one of two states, alive or dead.
    # The state of a cell is determined by the following rules.
    #
    # 1. Any live cell with fewer than two live neighbors dies, as if by underpopulation.
    # 2. Any live cell with two or three live neighbors lives on to the next generation.
    # 3. Any live cell with more than three live neighbors dies, as if by overpopulation.
    # 4. Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.
    #
    # Complete the function below to update the board with the next generation and pass the test cases.
    #
    def step(self):
        return
