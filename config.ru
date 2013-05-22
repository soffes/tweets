require 'rubygems'
require 'bundler'
Bundler.require(:default)

class App < Sinatra::Application
  set :public, Dir.pwd

  get '/' do
    File.read("#{settings.public_folder}/index.html")
  end
end

run App
