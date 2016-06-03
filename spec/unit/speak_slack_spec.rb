require_relative '../../app/speak_slack'
require_relative '../../constants'

module FoodTruck
  RSpec.describe SpeakSlack do
    describe 'SpeakSlack says' do
      context 'when passed an empty array' do
        it 'food trucks cannot be found' do
          expect(SpeakSlack.trucks).to be(MSG_NO_FOOD_TRUCKS)
        end
      end
      context 'when passed an array with food trucks' do
        it 'lists food trucks in a slack format' do
          expect(SpeakSlack.trucks(trucks: %w(one two))).to match(/one\ntwo/)
        end
        it 'lists uniq food trucks' do
          expect(SpeakSlack.trucks(trucks: %w(one two two))).to match("one\ntwo")
        end
      end
    end
  end
end
