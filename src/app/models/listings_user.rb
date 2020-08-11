class ListingsUser < ApplicationRecord

  # joining model establishing the many to many through relationship between listings and users

  belongs_to :listing_id
  belongs_to :user_id
end
