require 'sinatra'
require_relative 'participant'

get '/' do
  @participants = Participant.all
  erb :index
end

post '/add' do
  puts @params
  p = Participant.new
  p.first_name = @params['first_name']
  p.last_name = @params['last_name']
  p.gender = @params['gender']
  p.save
  redirect to('/')
end