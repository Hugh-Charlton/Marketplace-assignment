class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :profile_id, null: false, foreign_key: true
      t.references :listing_id, null: false, foreign_key: true
      t.float :score
      t.text :content


      t.timestamps
    end
  end
end
