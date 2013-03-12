require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'

get '/' do
  slim :home
end

get '/about' do
  @title = "All about this website"
  slim :about
end

get '/contact' do
  @title = "Contact us"
  slim :contact
end

not_found do
  slim :not_found
end
