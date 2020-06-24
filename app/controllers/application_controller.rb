require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"
  end

  get "/" do
    if logged_in?
      @favorites = Favorite.where(user_id: session[:user_id])
      erb :"users/homepage"
    else
      erb :index
    end
  end

  

  helpers do
    def logged_in?
      !!session[:user_id]
    end
  end 

end
