require 'httparty'
class ApplicationController < ActionController::Base
    include SessionsHelper

    def joke
        response = HTTParty.get('https://v2.jokeapi.dev/joke/Programming?blacklistFlags=racist,sexist,explicit')
        @random = JSON.parse(response.body)
        @randoms = @random['setup']
        @randomd = @random['delivery']

    end

end
