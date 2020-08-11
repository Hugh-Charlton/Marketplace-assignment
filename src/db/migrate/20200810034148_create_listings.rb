class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.float :cost
      t.integer :rating
      t.text :instruction
      t.references :username, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
