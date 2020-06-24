class ReviewsController < ApplicationController

    get '/reviews/:slug/new' do
        @ride = Ride.find_by_slug(params[:slug])
        erb :'reviews/new'
    end

  

end