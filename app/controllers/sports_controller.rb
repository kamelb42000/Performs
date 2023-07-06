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

  private
  
  def sport_params
    params.require(:sport).permit(:name, :teams, :sports)
  end
end
