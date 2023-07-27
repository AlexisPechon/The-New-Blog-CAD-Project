class DiscordWidgetController < ApplicationController
    
    def fetch_data
      #This method controls the logic that is require to read the API call
      #and to display the contents of the API call onto the webpage
        url = 'https://discord.com/api/guilds/973969434127507526/widget.json' #Variables stores the URL
        uri = URI(url) #Parses the information as a URI

        response = Net::HTTP.get(uri) #Gets the URI link
        @widget_data = JSON.parse(response) #Parses the JSON of the URI Link so it could be understood by the program
      end
end
