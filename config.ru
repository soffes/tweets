require 'rubygems'
require 'bundler'
Bundler.require(:default)

use Rack::CanonicalHost, ENV['CANONICAL_HOST'] if ENV['CANONICAL_HOST']

class Tweets < Sinatra::Application
  set :public_dir, Dir.pwd

  get '/' do
    File.read("#{settings.public_folder}/index.html")
  end
end

run Tweets
