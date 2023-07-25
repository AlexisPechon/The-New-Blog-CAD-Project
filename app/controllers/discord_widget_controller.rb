class DiscordWidgetController < ApplicationController
    def fetch_data
        url = 'https://discord.com/api/guilds/1130257966415745124/widget.json'
        uri = URI(url)
    
        response = Net::HTTP.get(uri)
        @widget_data = JSON.parse(response)
      end
end
