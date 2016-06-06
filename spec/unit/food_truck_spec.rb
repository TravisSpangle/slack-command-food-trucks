require_relative '../../app/schedule_parser'
require_relative '../../constants'

module FoodTruck
  RSpec.describe ScheduleParser do
    describe 'ScheduleParser loads data' do
      it 'provides food truck names' do
        sp = ScheduleParser.new

        expect(sp.trucks.class).to be(Array)
        expect(sp.trucks.length).to be > 1
      end
    end
  end
end
