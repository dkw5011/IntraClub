class ApplicationController < ActionController::Base
helper_method :current_player, :logged_in?, :current_team

    private
    def current_player
        @current_player ||= Player.find_by_id(session[:player_id]) if session[:player_id]
    end

    def current_team
        @current_team = Player.find_by_id(:id)
    end

    def logged_in?
        session[:player_id]
    end

    def redirect_if_not_logged_in
        redirect_to '/' if !logged_in?
    end

end
