class Cell {
  constructor(x, y) {
    this.x = x
    this.y = y
    this.grid = []

    for (var i = 0; i < this.x; i++) {
      for (var j = 0; j < this.y; j++) {
        this.grid[i][j] = false
      }
    }
  }
}

module.exports = { Cell: Cell }
