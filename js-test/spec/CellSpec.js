const { Cell } = require("../index.js")

describe("Cell", function() {
  describe("constructor()", function() {
    it("has an array that is x by y", function() {
      const cell = new Cell(2, 2)
      expect(cell.grid()).toBe(
        [
          [false, false], 
          [false, false]
        ]
      )
    })
  })
})
