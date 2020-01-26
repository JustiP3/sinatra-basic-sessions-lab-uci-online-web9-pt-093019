require_relative 'config/environment'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/checkout' do 
    @sessions = session 
    erb :checkout 
  end 
end
