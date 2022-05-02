class FantasyTeamsController < ApplicationController
    set :default_content_type, 'application/json'

    get '/fantasy-teams' do
        fantasy_teams = FantasyTeam.all
        fantasy_teams.to_json
      end

    get '/fantasy-teams/:id' do
        fantasy_team = FantasyTeam.find_by(id: params[:id])
        fantasy_team.to_json
    end

  end