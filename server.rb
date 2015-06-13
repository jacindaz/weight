require 'sinatra'
require 'sinatra/reloader'
require 'rubygems'
require 'pry-byebug'
require 'pg'

configure :development, :test do
  require 'pry'
end

get '/' do
  erb :'index'
end
