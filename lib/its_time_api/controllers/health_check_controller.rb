require_relative "../main.rb"
require_relative "../version.rb"

module ItsTimeApi
  module Controllers
    class HealthCheckController < ItsTimeApi::Main
      get '/' do
      end

      get '/status' do
        status = Hash.new
        status["api_name"] = "ItsTimeApi"
        status["version"] = ItsTimeApi::VERSION
        status["environment"] = ENV["RACK_ENV"]

        json status
      end
    end
  end
end
