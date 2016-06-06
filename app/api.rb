# Handles web request/response
require 'sinatra/base'
require_relative 'schedule_parser'
require_relative 'speak_slack'

module FoodTruck
  class API < Sinatra::Base
    get '/api' do
      sp = ScheduleParser.new

      SpeakSlack.trucks(trucks: sp.trucks)
    end
  end
end
