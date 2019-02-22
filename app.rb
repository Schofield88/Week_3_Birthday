require 'sinatra/base'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/birthday' do
    p params
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect '/greet'
  end

  get '/greet' do
    @name = session[:name]
    @day = session[:day]
    @month = session[:month]
    erb :birthday
  end

  run! if app_file == $0
end
