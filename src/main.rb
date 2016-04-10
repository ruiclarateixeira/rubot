require_relative 'rubot.rb'
require_relative 'texting_helper.rb'

require 'sinatra'
require 'yaml'

config = YAML.load_file("config.yml")

bot = Rubot.new()
texting_helper = TextingHelper.new(config)

get '/' do
  "Hello World - I'm RuBot"
end 

post "/" do
  request.body.rewind  # in case someone already read it
  bot.repeat(request.body.read)
end

post "/text/:target" do
  request.body.rewind
  texting_helper.send_text(:target, request.body.read)
end
