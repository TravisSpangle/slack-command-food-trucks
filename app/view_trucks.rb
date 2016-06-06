# Takes an array of food truck names and formats it to slack
require_relative '../constants'

module FoodTruck
  class ViewTrucks
    def self.slack trucks:
      msg = ""
      trucks.uniq!
      trucks.each do |truck|
        msg << "\n#{truck}"
      end
      (msg.empty? ? MSG_NO_FOOD_TRUCKS : msg.strip)
    end
  end
end
