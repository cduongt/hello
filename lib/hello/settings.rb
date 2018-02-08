require 'settingslogic'

module Hello
  class Settings < Settingslogic
    config_file = 'hello.yml'

    source "#{ENV['HOME']}/.hello/#{config_file}"\
    if File.exist?("#{ENV['HOME']}/.hello/#{config_file}")

    source "/etc/hello/#{config_file}"\
    if File.exist?("/etc/hello/#{config_file}")

    source "#{File.dirname(__FILE__)}/../../config/#{config_file}"
    namespace 'hello'
  end
end
