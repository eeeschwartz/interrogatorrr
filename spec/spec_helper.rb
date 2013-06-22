require File.join(File.dirname(__FILE__), '..', 'app.rb')

# setup test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  Sinatra::Application
end

RSpec.configure do |config|
  # to maintain color when output redirect to file
  config.tty = true
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
