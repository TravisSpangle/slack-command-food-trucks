# Handles web request/response
require 'sinatra/base'
require_relative 'schedule_parser'
require_relative 'schedule_fetcher'
require_relative 'view_trucks'

module FoodTruck
  class API < Sinatra::Base
    get '/food-trucks' do
      page = ScheduleFetcher.retrieve
      parser = ScheduleParser.new(page)

      ViewTrucks.slack(parser.trucks.uniq)
    end
  end
end
