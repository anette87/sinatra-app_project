class FavoritesController < ApplicationController

  get '/favorites/new' do
    @locations = Ride.locations  
    erb :"favorites/new"
  end

  post '/favorites' do
    ride_ids = params[:rides]
    ride_ids.each do |ride_id|
      favorites = Favorite.create(user_id: session[:user_id], ride_id: ride_id)
    end 
    redirect to '/'
  end 
  
  
  
end