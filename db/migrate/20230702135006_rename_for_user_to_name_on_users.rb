class RenameForUserToNameOnUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :user, :name
    add_index :users, :email, unique: true
  end
end
