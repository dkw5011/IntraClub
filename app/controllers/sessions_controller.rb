class SessionsController < ApplicationController

    
    def destroy
        session.delete(:player_id)
    
        redirect_to '/'
    end

    def new
    end

    def create
        @player = Player.find_by(username: params[:player][:username])

        if @player && @player.authenticate(params[:player][:username])
            session[:player_id] = @player.id
            redirect_to player_path(@player)
        else
            flash[:message] = "Incorrect Login Information Please Try Again"
            redirect_to login_path
        end
    end
end