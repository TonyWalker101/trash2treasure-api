class AddDonationRefToComments < ActiveRecord::Migration[6.1]
  def change
    remove_reference :comments, :donations
    add_reference :comments, :donation, foreign_key: true
  end
end
