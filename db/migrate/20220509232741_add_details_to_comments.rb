class AddDetailsToComments < ActiveRecord::Migration[6.1]
  def change
    # add_reference :comments, :user, foreign_key: true
    # add_reference :comments, :donations, foreign_key: true
    # add_column :comments, :comment, :text
  end
end
