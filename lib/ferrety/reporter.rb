require 'httparty'
require 'json'
require "resque"

INTERNAL_PASSWORD = '350c9d803c149399e61641e1e81228464f94e02351afb18da921096f7d6e9caee1722560db2000e73851699c8fd8d869d604ec91d49b6982483cc6960a5a4d82'
REPORTER_ENDPOINT = 'http://localhost:3000/reports/'

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