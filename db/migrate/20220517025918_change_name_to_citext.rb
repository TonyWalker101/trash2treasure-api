class ChangeNameToCitext < ActiveRecord::Migration[6.1]
  def change
    enable_extension("citext")

    change_column :donations, :name, :citext
  end
end
