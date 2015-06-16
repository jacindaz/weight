require 'sinatra'
require 'sinatra/reloader'
require 'rubygems'
require 'pry-byebug'
require 'pg'

require 'haml'
require 'better_errors'

configure :development, :test do
  require 'pry-byebug'
end

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

get '/' do
  haml :index, layout: :layout
end

get '/example' do 
  erb :example
end

get '/svg_example' do
  erb :svg_example
end
