class TeamsController < ApplicationController
    def index
        @teams = Team.all
    end

    def show
     @team = Team.find_by_id(params[:id])
   end

   def create
    @team = Team.new
    @team[:name] = params[:team][:name]
    @team.save
    redirect_to team_path(@team)
   end
end
