class PositionsController < ApplicationController

    get '/positions' do
        positions = Position.all
        positions.to_json(include: :players)
      end

    get '/positions/:id' do
        position = Position.find_by(id: params[:id])
        position.to_json
    end

  end