class AddUserToContacts < ActiveRecord::Migration[6.1]
  def change
    add_reference :contacts, :user
    add_index :users, :name, unique: true
  end
end
