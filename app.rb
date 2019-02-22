require 'sinatra/base'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/birthday' do
    p params
    session[:name] = params[:name]
    session[:birthday] = params[:birthday]
    redirect '/greet'
  end

  get '/greet' do
    @name = session[:name]
    @birthday = session[:birthday]
    erb :birthday
  end

  run! if app_file == $0
end
