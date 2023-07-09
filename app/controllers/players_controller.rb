class PlayersController < ApplicationController


  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    @player.update[player_params]
    redirect_to edit_sport_player_path(player)
  end

end
