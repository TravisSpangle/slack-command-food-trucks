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
      expect(last_response.body).to eq("Falafel Salam\nNOSH\nSeattle Chicken Over Rice\nAnchor End Pretzel Shoppe")
    end
  end
end
