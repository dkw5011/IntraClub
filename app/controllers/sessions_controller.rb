class SessionsController < ApplicationController

    def destroy
        session.clear
        redirect_to root_path
    end

    def create
        player = Player.find_by(username: params[:player][:username])
        if user && user.authenticate(params[:player][:username])
            session[:player_id] = player.id
            redirect_to player_path(player)
        else
            flash[:message] = "Incorrect Login Information Please Try Again"
            redirect_to "/login"
        end
    end
end