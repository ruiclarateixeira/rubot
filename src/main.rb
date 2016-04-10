require_relative 'rubot.rb'
require 'sinatra'

bot = Rubot.new()


get '/' do
  "Hello World - I'm RuBot"
end 

post "/" do
  request.body.rewind  # in case someone already read it
  bot.repeat(request.body.read)
end
