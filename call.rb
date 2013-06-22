require "rubygems"
require "sinatra"
require "./lib/phone"

post "/question.xml" do
  builder :question, locals: {question: "How are you feeling today?"}
end

post "/call/" do
  Phone.new.call_me
end

get "/posts/" do
  haml :posts, locals: {recordings: Phone.new.recordings}
end
