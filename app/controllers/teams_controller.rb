class TeamsController < ApplicationController
    def show
        find_team
    end

    def new
        @team = Team.new
    end

    def create
        @team = Team.new(team_params)
        @team.save
    end

    def edit
        find_team
    end

    def update
        find_team
        @team.update(team_params)
    end

    def destroy
    end

    private

    def find_team
        @team = Team.find_by(id: params[:id])
    end

    def team_params
        #need to add more params for pokemon
        params.require(:team).permit(:name)
    end
end
