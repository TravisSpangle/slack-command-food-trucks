# Handles web request/response
require 'sinatra/base'
require_relative 'food_truck'
require_relative 'speak_slack'

module FoodTruck
  class API < Sinatra::Base
    get '/api' do
      ft = FoodTruck.new

      SpeakSlack.trucks(trucks: ft.trucks )
    end
  end
end
