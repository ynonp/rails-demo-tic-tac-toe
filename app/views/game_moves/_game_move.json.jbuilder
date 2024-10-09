json.extract! game_move, :id, :game_id, :turn, :player, :row, :column, :created_at, :updated_at
json.url game_move_url(game_move, format: :json)
