class FantasyTeamController < ApplicationController
    set :default_content_type, 'application/json'

    get '/fantasyteams' do
        { message: "Fantasy Teams" }.to_json
      end
  end