require 'rubygems'
require 'bundler'
Bundler.require(:default)

class Tweets < Sinatra::Application
  set :public_dir, Dir.pwd

  get '/' do
    File.read("#{settings.public_folder}/index.html")
  end
end

run Tweets
