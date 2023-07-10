class PlayersController < ApplicationController
  def show
    @sport = Sport.find(params[:sport_id])
    @player = Player.find(params[:id])
  end

  def edit
    @sport = Sport.find(params[:sport_id])
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to sport_player_path(@player.sport, @player)
    else
      render :edit
    end
  end

  def new
    @sport = Sport.find(params[:sport_id])
    @player = Player.new
  end

  def create
    @sport = Sport.find(params[:sport_id])
    @player = @sport.players.build(player_params)
    @player.user = current_user

    if @player.save
      redirect_to sport_path(@sport), flash: { success: "Le joueur a été créé avec succès" }
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @sport = @player.sport

    if current_user == @sport.user
      @player.destroy
      redirect_to sport_path(@sport), status: :see_other, flash: { alert: "Le joueur a été supprimé avec succès." }
    else
      render plain: "Vous n'êtes pas autorisé à supprimer ce joueur.", status: :forbidden
    end
  end

  private

  def player_params
    params.require(:player).permit(:name, :size, :height, :position)
  end
end
