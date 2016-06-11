require_relative '../../app/schedule_parser'
require_relative '../../constants'

module FoodTruck
  RSpec.describe ScheduleParser do
    it 'provides food truck names' do
      file = File.open("sample_data.htm", "rb")
      parser = ScheduleParser.new(file.read)

      expect(parser.trucks.class).to be(Array)
      expect(parser.trucks.length).to be > 1
    end

    it 'provides a blank array with no results' do
      parser = ScheduleParser.new("bad data")
      expect(parser.trucks.class).to eq([])
    end
  end
end
