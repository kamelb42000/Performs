class SportsController < ApplicationController

  def index
    @sports = current_user.sports
  end

  def new
    @sport = Sport.new
  end

  def create
    @sport = Sport.new(sport_params)
    @sport.user = current_user
    if @sport.save
      redirect_to sports_path, flash: { success: "Le sport a été créé avec succès" }
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @sport = Sport.find(params[:id])
  end

  def destroy
    @sport = Sport.find(params[:id])
    if current_user == @sport.user
      @sport.destroy
      redirect_to sports_path, status: :see_other, flash: { alert: "Le dossier a été supprimé avec succès." }
    else
      render "Vous n'êtes pas autorisé à supprimer ce dossier.", status: :forbidden
    end
  end

  private

  def sport_params
    params.require(:sport).permit(:name, :teams, :sports)
  end
end
