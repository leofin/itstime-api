require "bundler"
Bundler.setup
require "rest_api_base"

# Requiring api files
require "./lib/its_time_api/main.rb"

# Run application
run ItsTimeApi::Main.new

# Settings routes
map("/") { run ItsTimeApi::Controllers::HealthCheckController.new }
map("/model1") { run ItsTimeApi::Controllers::Model1Controller.new }
