require "rubygems"
require "sinatra"
require "./lib/phone"

post "/call/" do
  Phone.new.call_me
end

get "/posts/" do
  haml :posts, locals: {recordings: Phone.new.recordings}
end
