class Profile < ApplicationRecord

  # profile model needs to access information on bio
  # needs to communicate with active storage for display pictures

  # has a one to one relationship with users
  belongs_to :users
end
