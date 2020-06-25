class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :ride
    validates :title, presence: true
    validates :content, presence: true 

end