class FavoritesController < ApplicationController

  get '/favorites/new' do
    @locations = Location.all  
    erb :"favorites/new"
  end

  post '/favorites' do
    ride_ids = params[:rides]
    ride_ids.each do |ride_id|
      favorites = Favorite.create(user_id: session[:user_id], ride_id: ride_id)
    end 
    redirect to '/'
  end 
  
  get '/favorites/edit' do
    @locations = Location.all
    @favorites = Favorite.where(user_id: session[:user_id]) 
    
    erb :"favorites/edit"
  end
  
  patch '/favorites' do
    if params[:rides] == nil
      redirect to '/favorites/edit'
    else
      @favorites = Favorite.where(user_id: session[:user_id])
      @favorites.delete_all
      ride_ids = params[:rides]
        ride_ids.each do |ride_id|
          @favorites << Favorite.create(user_id: session[:user_id], ride_id: ride_id)
      end
    end  
 
      redirect to '/'
  end
  
  
end
  


