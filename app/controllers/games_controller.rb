class GamesController < ApplicationController
    def index
        @games = Game.all
    end

    def show
     @game = Game.find_by_id(params[:id])
   end

   def new
    @game = Game.new
   end
 def edit
  end

  def update
    @game.update(game_params)
    if @game.save
    redirect_to game_path(@game)
    else
      redirect_to games_path
    end
  end

  private

  def game_params
    params.require(:game).permit(:location, :team, :date, :time, :post)
  end
end
