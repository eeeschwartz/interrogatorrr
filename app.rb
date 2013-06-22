require 'rubygems'
require 'sinatra'
require './lib/phone'
require './lib/question'

post '/question.xml' do
  builder :question, locals: {questions: Question.all[0..3]}
end

post '/call/' do
  Phone.new.call_me
end

get '/posts/' do
  haml :posts, locals: {recordings: [Phone.new.recordings.first]}
end