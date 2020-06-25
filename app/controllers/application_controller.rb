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

  get '/signup' do
    if logged_in?
         redirect "/"
    else  
        erb :"users/signup"
    end 
end

post '/signup' do
    user = User.new(username: params[:username], email: params[:email], password: params[:password])
    if user.save
        session[:user_id] = user.id 
        redirect "/"
    else
        redirect "/signup"
    end
end

helpers do
  def logged_in?
    !!session[:user_id]
  end
end 

end
