class ApplicationController < ActionController::Base
    def current_player
        @current_player || = Player.find_by_id(session[:player_id]) if session[:player_id]
    end

    def logged_in?
        session[:player_id]
    end

    def redirect_if_not_logged_in
        redirect_to '/' if !logged_in?
    end

end
