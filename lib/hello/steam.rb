require 'net/http'
require 'json'

module Hello
  class SteamClient
    def initialize(api_key, steam_id)
      @api_key = api_key
      @steam_id = steam_id
    end

    def get_player_summaries()
      uri = URI.parse("http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=#{@api_key}&steamids=#{@steam_id}")
      request = Net::HTTP::Get.new(uri)
      response = Net::HTTP.start(uri.hostname, uri.port) {|http|
        http.request(request)
      }
     response_json = JSON.parse(response.body)
     response_json['response']['players'].each do |player|
      puts "Nickname: #{player['personaname']}"
      puts "Steam profile link: #{player['profileurl']}"
      puts "Country: #{player['loccountrycode']}"
     end
    end
  end
end