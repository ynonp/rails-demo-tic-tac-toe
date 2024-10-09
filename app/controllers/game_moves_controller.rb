class GameMovesController < ApplicationController
  before_action :set_game_move, only: %i[ show edit update destroy ]

  # GET /game_moves or /game_moves.json
  def index
    @game_moves = GameMove.all
  end

  # GET /game_moves/1 or /game_moves/1.json
  def show
  end

  # GET /game_moves/new
  def new
    @game_move = GameMove.new
  end

  # GET /game_moves/1/edit
  def edit
  end

  # POST /game_moves or /game_moves.json
  def create
    @game_move = GameMove.new(game_move_params)

    respond_to do |format|
      if @game_move.save
        format.html { redirect_to @game_move, notice: "Game move was successfully created." }
        format.json { render :show, status: :created, location: @game_move }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_moves/1 or /game_moves/1.json
  def update
    respond_to do |format|
      if @game_move.update(game_move_params)
        format.html { redirect_to @game_move, notice: "Game move was successfully updated." }
        format.json { render :show, status: :ok, location: @game_move }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_moves/1 or /game_moves/1.json
  def destroy
    @game_move.destroy!

    respond_to do |format|
      format.html { redirect_to game_moves_path, status: :see_other, notice: "Game move was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_move
      @game_move = GameMove.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def game_move_params
      params.expect(game_move: [ :game_id, :turn, :player, :row, :column ])
    end
end
