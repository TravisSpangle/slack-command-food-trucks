require_relative '../../app/speak_slack'

module FoodTruck
  RSpec.describe SpeakSlack do
    describe 'SpeakSlack says' do
      context 'when passed an empty array' do
        it 'food trucks cannot be found'
      end
      context 'when passed an array with food trucks' do
        it 'lists food trucks in a slack format'
      end
    end
  end
end
