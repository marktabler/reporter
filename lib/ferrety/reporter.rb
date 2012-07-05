require 'httparty'
require 'json'
require "resque"

INTERNAL_PASSWORD = ENV['FERRETY_PASSWORD']
REPORTER_ENDPOINT = 'http://ferrety.net/reports/'

module Ferrety

  class Reporter

    def call
      HTTParty.post(REPORTER_ENDPOINT,
        body: {pw: INTERNAL_PASSWORD,
               command: 'generate_reports'
               })
    end

  end
end

Ferrety::Reporter.new.call