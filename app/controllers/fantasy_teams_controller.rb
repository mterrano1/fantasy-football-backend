class FantasyTeamsController < ApplicationController

    get '/fantasy-teams' do
        fantasy_teams = FantasyTeam.all.order(:points)
        fantasy_teams.to_json(include: :players)
      end

    get '/fantasy-teams/:id' do
        fantasy_team = FantasyTeam.find_by(id: params[:id])
        fantasy_team.to_json(include: :players)
    end

  end