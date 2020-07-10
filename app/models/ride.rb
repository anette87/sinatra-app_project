class Ride < ActiveRecord::Base
    has_many :reviews
    has_many :favorites
    belongs_to :location 


    def slug
        name.tr(" ", "-")
    end
    
    def self.find_by_slug(slug)
          self.find_by(name: slug.tr("-"," "))
    end 

end

