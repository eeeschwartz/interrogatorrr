require "twilio-ruby"

def call
  account_sid = ENV.fetch("ACCOUNT_SID")
  auth_token = ENV.fetch("AUTH_TOKEN")
  client = Twilio::REST::Client.new account_sid, auth_token
  call = client.account.calls.create(
    url: "http://demo.twilio.com/docs/voice.xml",
    to: "+17738600685",
    from: "+17083254515")
end

call
