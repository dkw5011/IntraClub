class TeamsController < ApplicationController
    def index
        @teams = Team.all
    end

    def show
     @team = Team.find_by_id(params[:id])
   end

   def create
    @team = Team.new
    @coupon[:name] = params[:team][:name]
    @team.save
    redirect_to team_path(@team)
  en
end
