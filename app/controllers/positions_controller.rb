class PositionsController < ApplicationController

    get '/positions' do
        positions = Position.all
        positions.to_json(include: :players)
    end

end