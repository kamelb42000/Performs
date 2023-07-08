class NumbersController < ApplicationController

  def index
    @sports = current_user.sports
    @numbers = current_player.sports
  end

  
end
