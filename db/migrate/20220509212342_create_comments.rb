class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :donation, index: true, foreign_key: true
      t.text :comment

      t.timestamps null:false
    end
  end
end
