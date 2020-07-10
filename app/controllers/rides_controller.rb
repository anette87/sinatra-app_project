class RidesController < ApplicationController

    get '/rides' do
        if !logged_in?
            redirect "/login"
        else 
            @locations = Location.all
            erb :"rides/rides"
        end    
    end
    
    get '/rides/:slug' do
        if !logged_in?
            redirect "/login"
        else 
            @ride = Ride.find_by_slug(params[:slug])
            
            erb :'rides/show'
        end
    end
    


  

end