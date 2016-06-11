# Takes an array of food truck names and formats it to slack
require_relative '../constants'

module FoodTruck
  class ViewTrucks
    def self.slack(trucks)
      if trucks.empty?
        MSG_NO_FOOD_TRUCKS
      else
        trucks.join("\n")
      end
    end
  end
end
