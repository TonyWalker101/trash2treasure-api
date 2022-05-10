class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.reference :user, index: true, foreign_key: true
      t.reference :donation, index: true, foreign_key: true
      t.comment :text

      t.timestamps null:false
    end
  end
end
