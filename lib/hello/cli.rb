require 'thor'
require 'hello/steam'

module Hello
  class CLI < Thor
    desc "steam", "Get steam profile information"
    option :apikey, :required => true
    option :steamid, :required => true
    def steam()
      client = Hello::SteamClient.new(options[:apikey], options[:steamid])
      client.get_player_summaries()
    end
  end
end
