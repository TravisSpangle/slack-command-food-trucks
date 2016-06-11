# Retrieves food-truck feed

require_relative '../constants'
require 'httparty'

module FoodTruck
  class ScheduleFetcher
    def self.retrieve(url: FOOD_TRUCK_URL)
      HTTParty.get(url)
    end
  end
end
