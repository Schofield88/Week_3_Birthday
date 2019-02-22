require 'sinatra/base'
require './lib/birthday_calc'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/birthday' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect '/greet'
  end

  get '/greet' do
    p @name = session[:name]
    p @day = session[:day].to_i
    p @month = session[:month].to_i
    p @how_long = Birthday_Calc.new(@day, @month).calculate     
    erb :birthday
  end

  run! if app_file == $0
end
