require 'sinatra'

get '/' do
  erb :index
end

post '/add' do
  puts @params
  redirect to('/')
end