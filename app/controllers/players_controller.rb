class PlayersController < ApplicationController
   def new
    @player = Player.new
    @player.build_team
   end
   
   def create
   @player = Player.new(player_params)
     if @player.save
        session[:player_id] = @player.id
        redirect_to player_path(@player)
      else
        render :new
      end
   end

   def show
     @player = Player.find_by_id(params[:id])
    # # # redirect_to '/' if !@player
    render :show
   end

   private

   def player_params
    params.require(:player).permit(:username, :email, :password, team_attributes: [:name])
   end

end
