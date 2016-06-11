require 'rack/test'
require_relative '../../app/api'

module FoodTruck
  RSpec.describe 'Food Truck API' do
    include Rack::Test::Methods

    def app
      API.new
    end

    describe 'provides message' do
      it 'of listed food trucks' do
        get '/food-trucks'
        expect(last_response.status).to eq(200)
      end
    end
  end
end
