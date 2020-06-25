class ReviewsController < ApplicationController

    get '/reviews' do
        @reviews = Review.all 

        erb :"reviews/reviews"
    end
    
    get '/rides/:slug/reviews/new' do
        @ride = Ride.find_by_slug(params[:slug])
        erb :'reviews/new'
    end

    
    post '/reviews/:slug/' do 
        ride = Ride.find_by_slug(params[:slug])
        review = Review.new(title: params[:title], content: params[:content], user_id: session[:user_id], ride_id: ride.id)
        if review.save 
            redirect "/reviews/#{review.id}"
        else
            redirect "/reviews/#{ride.slug}/new"
        end
    end
    
    get "/reviews/:id" do
        if !logged_in?
            redirect "/login"
        else
            @review = Review.find(params[:id]) 
            erb :'reviews/show'
        end
    end

    
    
    get '/reviews/:id/edit' do
        if !logged_in?
            redirect "/login"
        else 
        @review = Review.find(params[:id])
        erb :'reviews/edit' 
        end 

    end
    
    patch '/reviews/:id' do
        @review = Review.find(params[:id])
        if @review.user_id == session[:user_id] && @review.update(title: params["title"], content: params["content"]) 
            redirect to "reviews/#{@review.id}"
        else
            redirect to "reviews/#{@review.id}/edit"
        end  
    end

    delete '/reviews/:id' do
        @review = Review.find(params[:id])
        if @review.user_id == session[:user_id]  
            @review.destroy
        end
        redirect to '/rides'
    end 


end