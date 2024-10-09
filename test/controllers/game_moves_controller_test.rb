require "test_helper"

class GameMovesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_move = game_moves(:one)
  end

  test "should get index" do
    get game_moves_url
    assert_response :success
  end

  test "should get new" do
    get new_game_move_url
    assert_response :success
  end

  test "should create game_move" do
    assert_difference("GameMove.count") do
      post game_moves_url, params: { game_move: { column: @game_move.column, game_id: @game_move.game_id, player: @game_move.player, row: @game_move.row, turn: @game_move.turn } }
    end

    assert_redirected_to game_move_url(GameMove.last)
  end

  test "should show game_move" do
    get game_move_url(@game_move)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_move_url(@game_move)
    assert_response :success
  end

  test "should update game_move" do
    patch game_move_url(@game_move), params: { game_move: { column: @game_move.column, game_id: @game_move.game_id, player: @game_move.player, row: @game_move.row, turn: @game_move.turn } }
    assert_redirected_to game_move_url(@game_move)
  end

  test "should destroy game_move" do
    assert_difference("GameMove.count", -1) do
      delete game_move_url(@game_move)
    end

    assert_redirected_to game_moves_url
  end
end
