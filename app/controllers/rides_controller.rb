class RidesController < ApplicationController

    get '/rides' do
        @locations = Ride.locations
        erb :"rides/rides"    
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