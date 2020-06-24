class Ride < ActiveRecord::Base
    has_many :reviews
    has_many :favorites 

    def self.by_land(land)
        self.where(location:land) #use where to return more than one instance
    end
    
    def self.locations
        rides = Ride.all
        rides.map.each do |ride|
         ride.location
        end.uniq  #when using map use .uniq in the closing end as end.uniq 
    end

    def slug
        name.tr(" ", "-")
    end
    
    def self.find_by_slug(slug)
          self.find_by(name: slug.tr("-"," "))
    end 

end

