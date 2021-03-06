require_relative '../../app/view_trucks'
require_relative '../../constants'

module FoodTruck
  RSpec.describe ViewTrucks do
    it 'returns a string indicating no food trucks can be found' do
      expect(ViewTrucks.slack([])).to eq(MSG_NO_FOOD_TRUCKS)
    end

    it 'lists food trucks' do
      expect(ViewTrucks.slack(%w(one two))).to match(/one\ntwo/)
    end
  end
end
