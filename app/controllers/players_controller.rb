class PlayersController < ApplicationController
   def new
    @player = Player.new
   end
   
   def create
    @player = Player.new(player_params)
        if @player.save
            session[:player_id] = @player.id
            redirect_to @player
        else
            render :new
        end
   end

   def show
   end

   private

   def player_params
    params.require(:player).permit(:name, :email, :username, :password, :age)
   end

end
