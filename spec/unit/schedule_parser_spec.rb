require_relative '../../app/schedule_parser'
require_relative '../../constants'

module FoodTruck
  RSpec.describe ScheduleParser do
    it 'provides food truck names' do
      file = File.open("./spec/unit/sample_data.htm", "rb")
      parser = ScheduleParser.new(file.read)

      expect(parser.trucks).to eq(["Falafel Salam",
                                   "NOSH",
                                   "Seattle Chicken Over Rice",
                                   "Anchor End Pretzel Shoppe"])
    end

    it 'provides a blank array with no results' do
      parser = ScheduleParser.new("bad data")
      expect(parser.trucks).to eq([])
    end
  end
end
