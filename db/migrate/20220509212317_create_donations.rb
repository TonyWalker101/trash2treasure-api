class CreateDonations < ActiveRecord::Migration[6.1]
  def change
    create_table :donations do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.text :location
      t.text :description
      t.string :condition
      t.boolean :available
      t.decimal :latitude
      t.decimal :longitude
      t.string :image

      t.timestamps null:false
    end
  end
end
