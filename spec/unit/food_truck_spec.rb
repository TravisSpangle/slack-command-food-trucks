require_relative '../../app/food_truck'
require_relative '../../constants'

module FoodTruck
  RSpec.describe FoodTruck do
    describe 'FoodTruck loads data' do
      it 'provides food truck names' do
        ft = FoodTruck.new(url: FOOD_TRUCK_URL)

        expect(ft.trucks.class).to be(Array)
        expect(ft.trucks.length).to be > 1
      end
    end
  end
end
