require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/birthday' do
    p params
    @name = params[:name]
    @birthday = params[:birthday]
    erb :birthday
  end

  run! if app_file == $0
end
