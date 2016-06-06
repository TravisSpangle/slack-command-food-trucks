# Retrieves food-truck feed and parses it

require_relative '../constants'
require 'httparty'
require 'nokogiri'

module FoodTruck
  class ScheduleParser
    attr_reader :trucks
    def initialize(url: FOOD_TRUCK_URL)
      load_trucks_from(url)
    end

    private

    def load_trucks_from(url)
      request = HTTParty.get(url)
      page = Nokogiri::HTML(request.body)
      @trucks = parse_trucks(page)
    end

    def parse_trucks(page)
      page.css('ul.simcal-events')[0].css('span.simcal-event-title').map(&:text) || []
    end
  end
end
