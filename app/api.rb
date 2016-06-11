# Handles web request/response
require 'sinatra/base'
require_relative 'schedule_parser'
require_relative 'view_trucks'

module FoodTruck
  class API < Sinatra::Base
    get '/food-trucks' do
      sp = ScheduleParser.new

      ViewTrucks.slack(trucks: sp.trucks)
    end
  end
end
