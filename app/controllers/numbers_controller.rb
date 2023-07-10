class NumbersController < ApplicationController
  def index
    @sport = Sport.find(params[:sport_id])
    @player = Player.find(params[:player_id])
    @numbers = @player.numbers
  end

  def new
    @sport = Sport.find(params[:sport_id])
    @player = Player.find(params[:player_id])
    @number = Number.new
  end

  def create
    @sport = Sport.find(params[:sport_id])
    @player = Player.find(params[:player_id])
    @number = @player.numbers.build(number_params)
    @player.user = current_user

    if @number.save
      redirect_to sport_player_numbers_path(@sport, @player), flash: { success: "Les stats ont été ajoutées avec succès" }
    else
      puts @number.errors.full_messages # Affiche les erreurs dans la console
      render :new, status: :unprocessable_entity
    end
  end

  private

  def number_params
    params.require(:number).permit(:duration, :score)
  end
end


# <%= link_to "Voir les statistiques", url_for([@sport, @player, :numbers])
