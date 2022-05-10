class CreateDonations < ActiveRecord::Migration[6.1]
  def change
    create_table :donations do |t|
      t.references :user, index: true, foreign_key: true
      t.name :string
      t.location :text
      t.description :text
      t.condition :string
      t.available :boolean
      t.latitude :decimal
      t.longitude :decimal
      t.image :string

      t.timestamps null:false
    end
  end
end
