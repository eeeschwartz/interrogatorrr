require "rubygems"
require "twilio-ruby"
require "sinatra"
require "yaml"

settings = YAML.load_file("settings.yml")

get "/" do
  # Get your Account Sid and Auth Token from twilio.com/user/account
  account_sid = settings.fetch("account_sid")
  auth_token = settings.fetch("auth_token")
  @client = Twilio::REST::Client.new account_sid, auth_token
  call = @client.account.calls.create(:url => "http://demo.twilio.com/docs/voice.xml",
  :to => "+17738600685",
  :from => "+17083254515")
  puts call.sid
end
