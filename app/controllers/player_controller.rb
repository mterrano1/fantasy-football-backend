class PlayerController < ApplicationController
    set :default_content_type, 'application/json'

    get '/players' do
        { message: "Players" }.to_json
      end
  end