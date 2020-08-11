class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # verifies that a username is used
  validates :username, presence: true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    # has a one to one relationship with profiles
    has_one :profiles

    # has a many through relationship with listings via listings_user, as a user can have many listings but a listing can have many user that purchase it
    #has_many :listings, through: :listings_users

    # has a one to many relationship with reviews, a user can leave more than one review
    has_many :reviews
end
