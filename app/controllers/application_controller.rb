require 'httparty'
class ApplicationController < ActionController::Base
    include SessionsHelper

    def joke
        #The joke method is implementing the dad jokes external api.
        #How it works is that it would take the setup and delivery elements of the API
        #store them in a variable that I could use in the _footer.html.erb file
        #Which can be displayed in the bottom of my webpage.
        response = HTTParty.get('https://v2.jokeapi.dev/joke/Programming?blacklistFlags=racist,sexist,explicit')
        @random = JSON.parse(response.body)
        @randoms = @random['setup']
        @randomd = @random['delivery']

    end

end
