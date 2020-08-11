class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user_id, null: false, foreign_key: true
      t.text :bio

      t.timestamps
    end
  end
end
