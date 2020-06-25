class User < ActiveRecord::Base
    has_secure_password
    has_many :reviews
    has_many :rides, through: :reviews
    has_many :favorites
    validates :username, uniqueness: true
    validates :username, presence: true
    validates :email, uniqueness: true
    validates :email, presence: true
  


    



end