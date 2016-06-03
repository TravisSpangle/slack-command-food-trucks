# Slack Food Truck

Provides slash command to list food trucks in neighborhood. Runs on Sinatra using RSpec for TDD.

# Customizing

The URL containing the data  needs to be configured constants.rb in FOOD_TRUCK_URL

This site is hit and parsed with nokogiri css selectors in app/food_truck.rb method parse_trucks

# Deployment

Deployment is easy with heroku. Follow the Sinatra Books documentation
* https://github.com/sinatra/sinatra-book/blob/master/book/Deployment.markdown

# Issues and Feature Requests

Report on https://github.com/TravisSpangle/slack-command-food-trucks

