require 'httparty'
class JokeController < ApplicationController
  def joke
    #This method controls and handles the logic necessary to parse and read the API calls
    #This will then be used inside of the file joke.html.erb so it can be displayed on the webpage
    response = HTTParty.get('https://v2.jokeapi.dev/joke/Programming?blacklistFlags=nsfw,religious,political,racist,sexist,explicit&type=twopart')
    @random = JSON.parse(response.body)
    @randoms = @random['setup']
    @randomd = @random['delivery']
  end
end
