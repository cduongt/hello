require 'thor'

module Hello
  class CLI < Thor
    desc 'steam', 'Get steam profile information'
    option :'apikey',
           required: true,
           default: Hello::Settings['steam']['api_key'],
           type: :string,
           desc: 'Steam API key'
    option :'steamid',
           required: true,
           default: Hello::Settings['steam']['steam_id'],
           type: :string,
           desc: 'Steam64 ID of player'
    option :'get-summary',
           required: false,
           desc: 'Get Player summary'
    def steam
      client = Hello::SteamClient.new(options[:apikey], options[:steamid])
      client.player_summary if options['get-summary']
    end
  end
end
