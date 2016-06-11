require 'rack/test'
require_relative '../../app/api'

module FoodTruck
  RSpec.describe 'Food Truck API' do
    include Rack::Test::Methods

    def app
      API.new
    end

    it 'lists uniq food trucks' do
      get '/food-trucks'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to match(/[A-Z][a-z]*.*\n/)
    end
  end
end
