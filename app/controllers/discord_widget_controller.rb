require 'httparty'
class DiscordWidgetController < ApplicationController
    
    def fetch_data
      #This method controls the logic that is require to read the API call
      #and to display the contents of the API call onto the webpage
        response = HTTParty.get('https://discord.com/api/guilds/973969434127507526/widget.json') #Variable store the get request of the API Call
        @widget_data = JSON.parse(response.body) #Parses the JSON data so it could be understood by Ruby.
      end
end
