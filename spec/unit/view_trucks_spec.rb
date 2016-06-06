require_relative '../../app/view_trucks'
require_relative '../../constants'

module FoodTruck
  RSpec.describe ViewTrucks do
    describe 'ViewTrucks says' do
      context 'when passed an empty array' do
        it 'food trucks cannot be found' do
          expect(ViewTrucks.slack(trucks:[])).to be(MSG_NO_FOOD_TRUCKS)
        end
      end
      context 'when passed an array with food trucks' do
        it 'lists food trucks in a slack format' do
          expect(ViewTrucks.slack(trucks: %w(one two))).to match(/one\ntwo/)
        end
        it 'lists uniq food trucks' do
          expect(ViewTrucks.slack(trucks: %w(one two two))).to match("one\ntwo")
        end
      end
    end
  end
end
