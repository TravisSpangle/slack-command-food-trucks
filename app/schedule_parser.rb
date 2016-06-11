# Retrieves food-truck feed and parses it

require_relative '../constants'
require 'nokogiri'

module FoodTruck
  class ScheduleParser
    attr_reader :trucks
    def initialize(data)
      page = Nokogiri::HTML(data)
      @trucks = parse_trucks(page)
    end

    private

    # ToDo remove this method
    def load_trucks_from(url)
      request = HTTParty.get(url)
      page = Nokogiri::HTML(request.body)
      @trucks = parse_trucks(page)
    end

    def parse_trucks(page)
      todays_trucks = page.css('ul.simcal-events')[0]
      if todays_trucks
        todays_trucks.css('span.simcal-event-title').map(&:text)
      else  
        []
      end
    end
  end
end
