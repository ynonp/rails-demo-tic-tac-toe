class CreateGameMoves < ActiveRecord::Migration[8.0]
  def change
    create_table :game_moves do |t|
      t.references :game, null: false, foreign_key: true
      t.integer :turn
      t.string :player
      t.integer :row
      t.integer :column

      t.timestamps
    end
  end
end
