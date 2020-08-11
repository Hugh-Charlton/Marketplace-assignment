class Listing < ApplicationRecord

    # listings model needs to access information on title, description, cost, rating and instructions
    # needs to communicate with active storage for display images of finished product

    # has a one to many relationship with reviews and reviews have a dependacy that destroys them if thier listing is destroyed
    has_many :reviews

    # has a many through relationship with listings via listings_user, as a user can have many listings but a listing can have many user that purchase it
    has_many :users, through: :listings_users

    # server side validation: forces users to fill fields when submitting new listing form
    validates :title, :description, :cost, presence: true
end
