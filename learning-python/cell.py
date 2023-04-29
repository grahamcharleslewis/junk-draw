def cell(x, y):
    rows, cols = (x, y)
    grid = [[0]*cols]*rows
    print(grid)

    grid[1][1] = 1
    print(grid)


cell(4, 6)