class GameChannel < ApplicationCable::Channel
  def subscribed
    # game_id = params[:id]
    # stream_from "game_#{game_id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
