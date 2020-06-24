class Helpers

    def self.is_logged_in?(session)
        !!session[:user_id]
    end

    def self.current_user(session)
        User.find(session[:user_id])
    end 

    def self.rides_by_land(land)
        Ride.by_land(land)
    end 

end