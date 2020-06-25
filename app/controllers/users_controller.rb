class UsersController < ApplicationController


    get "/login" do
        if logged_in?
            redirect "/"
        else  
            erb :"users/login"
        end 
    end

    post "/login" do
        user = User.find_by(:username => params[:username])
        
            if user != nil && user.authenticate(params[:password])
                session[:user_id] = user.id 
                redirect "/"
            else
                redirect "/login"
            end
    end

    get "/logout" do
        session.clear
        redirect "/"  
    end

  

end