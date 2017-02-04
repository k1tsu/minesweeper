module Minesweeper
  class Sweep
    attr_reader :board, :game_over_flag, :rows, :columns
    def initialize(board, mine_count)
      game_over_flag = false
      @rows = board[0].length
      @columns = board.length
    end

    def sweep_over(x, y)
      if x < 0 || y < 0 || x > @rows || y > @columns
        return
      end
      UP = [x, y - 1]
      DOWN = [x, y + 1]
      LEFT = [x - 1, y]
      RIGHT = [x + 1, y]
      TOP_LEFT = [x - 1, y - 1]
      TOP_RIGHT = [x + 1, y - 1]
      BOTTOM_LEFT = [x - 1, y + 1]
      BOTTOM_RIGHT = [x + 1, y + 1]
    end

    def dummy_board
      dummy = Array.new(9){ Array.new(9,0) }
      dummy_level_name = "BEGINNER"
      mine_count = Minesweeper::Level.mine_count(dummy_level_name)
      Minesweeper::Bomb.place_mines(dummy, mine_count)
    end
  end
end