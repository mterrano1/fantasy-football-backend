class PositionController < ApplicationController
    set :default_content_type, 'application/json'

    get '/position' do
        { message: "Position" }.to_json
      end
  end