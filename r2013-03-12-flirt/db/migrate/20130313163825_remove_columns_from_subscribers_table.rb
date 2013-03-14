class RemoveColumnsFromSubscribersTable < ActiveRecord::Migration
  def change
    remove_column :subscribers, :name
    remove_column :subscribers, :email
    remove_column :subscribers, :password_digest
  end
end
