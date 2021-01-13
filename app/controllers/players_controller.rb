class PlayersController < ApplicationController

  def new
    if params[:team_id] && @team = Team.find_by_id(params[:team_id])
      @player = @team.players.build
    else
      @player = Player.new
    end
    
  end

  def index
    
    if params[:team_id] && @team = Team.find_by_id(params[:team_id])
      @players = @team.players.alpha
    # @players = Player.all
     else
      @error = "That team doesn't exist" if params[:team_id]
      @players = Player.alpha.includes(:team)
    end
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
    @team = Team.find_by_id(params[:id])
    @player = Player.find_by_id(params[:id])
  end

  private

  def player_params
    params.require(:player).permit(:username, :email, :password, :team_id)
  end

end
