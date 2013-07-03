Bundler.require

require 'rubygems'
require 'sinatra'
require 'yaml'
require './lib/phone'
require './lib/question'
require 'sinatra/asset_pipeline'

class App < Sinatra::Base
  register Sinatra::AssetPipeline

  get '/' do
    "hello world"
  end

  get '/question.xml' do
    builder :question, locals: {question: Question.first}
  end

  post '/question.xml' do
    builder :question, locals: {question: Question.first}
  end

  post '/call/' do
    Phone.new.call_me
  end

  get '/posts/' do
    haml :posts, locals: {recordings: [Phone.new.recordings.first]}
  end
end

# Bundler.require
#
# require 'sinatra/asset_pipeline'
#
# class App < Sinatra::Base
#   register Sinatra::AssetPipeline
#
#   get '/' do
#     "hello world"
#   end
# end
#
