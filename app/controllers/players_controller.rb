class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
    # @player.build_team
  end
   
  def create
    @player = Player.new(player_params)
    if @player.save
      session[:player_id] = @player.id
        render :show
    else
      render :new
    end
  end

  def show
    @player = Player.find_by_id(params[:id])
  end

  private

  def player_params
    params.require(:player).permit(:username, :email, :password, :team_id)
  end

end
