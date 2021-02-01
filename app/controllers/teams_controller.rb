class TeamsController < ApplicationController
    def index
        @teams = Team.all
    end

    def ordered_wins
    @teams = Team.ordered_wins
   end
    
    def new
        @team = Team.new
    end

    def show
    end

   


#    def create
#     @team = Team.new(team_params)
#     # @team[:name] = params[:team][:name]
#     @team.save
#     redirect_to team_path(@team)
#    end

  private

   def team_params
    params.require(:team).permit(:wins, :losses, :name)
   end
end
