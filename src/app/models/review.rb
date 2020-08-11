class Review < ApplicationRecord
  
  # review model needs to access information on score and review
  
  # has a one to many relationship with users, a user can place many reviews
  belongs_to :users

  # has a one to many relationship with listings, a listing can have many reviews
  belongs_to :listings
end
