class PositionsController < ApplicationController
    set :default_content_type, 'application/json'

    get '/positions' do
        positions = Position.all
        positions.to_json
      end

    get '/positions/:id' do
        position = Position.find_by(id: params[:id])
        position.to_json(include: :players)
    end

  end