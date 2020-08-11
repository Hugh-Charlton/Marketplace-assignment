class CreateListingsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :listings_users do |t|
      t.references :listing_id, null: false, foreign_key: true
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
