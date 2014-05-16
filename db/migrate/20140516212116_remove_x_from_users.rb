class RemoveXFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :password_salt
    remove_column :users, :password_hash
  end
end
