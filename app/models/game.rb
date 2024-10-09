class Game < ApplicationRecord
  has_many :game_moves, inverse_of: :game

  def at(row, column)
    start = [['.', '.', '.'],
             ['.', '.', '.'],
            ['.', '.', '.']]
    board = game_moves.reduce(start) do |g, move|
      g.tap { |g| g[move.row][move.column] = move.player }
    end
    board[row][column]
  end

  def next_player
    ['X', 'O'][game_moves.count % 2]
  end
end
