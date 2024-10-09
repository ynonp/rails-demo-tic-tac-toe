require "application_system_test_case"

class GameMovesTest < ApplicationSystemTestCase
  setup do
    @game_move = game_moves(:one)
  end

  test "visiting the index" do
    visit game_moves_url
    assert_selector "h1", text: "Game moves"
  end

  test "should create game move" do
    visit game_moves_url
    click_on "New game move"

    fill_in "Column", with: @game_move.column
    fill_in "Game", with: @game_move.game_id
    fill_in "Player", with: @game_move.player
    fill_in "Row", with: @game_move.row
    fill_in "Turn", with: @game_move.turn
    click_on "Create Game move"

    assert_text "Game move was successfully created"
    click_on "Back"
  end

  test "should update Game move" do
    visit game_move_url(@game_move)
    click_on "Edit this game move", match: :first

    fill_in "Column", with: @game_move.column
    fill_in "Game", with: @game_move.game_id
    fill_in "Player", with: @game_move.player
    fill_in "Row", with: @game_move.row
    fill_in "Turn", with: @game_move.turn
    click_on "Update Game move"

    assert_text "Game move was successfully updated"
    click_on "Back"
  end

  test "should destroy Game move" do
    visit game_move_url(@game_move)
    click_on "Destroy this game move", match: :first

    assert_text "Game move was successfully destroyed"
  end
end
