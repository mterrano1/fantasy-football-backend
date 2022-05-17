class PlayersController < ApplicationController

    get '/players' do
        players = Player.all
        players.to_json(include: :position)
    end

    get '/players/:id' do
        player = Player.find_by(id: params[:id])
        player.to_json(include: :position)
    end

    post '/players' do
        player = Player.create(
            name: params[:name],
            team: params[:team],
            img: params[:img],
            position_id: params[:position_id]
        )
        player.to_json(include: :position)
    end

    patch '/players/:id' do
        player = Player.find_by(id: params[:id])
        player.update(
            fantasy_team_id: params[:fantasy_team_id]
        )
        player.to_json(include: :fantasy_team, include: :position)
    end

    delete '/players/:id' do
        player = Player.find_by(id: params[:id])
        player.destroy
        player.to_json
    end

  end