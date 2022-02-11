class AddContactToPhone < ActiveRecord::Migration[6.1]
  def change
    add_reference :phones, :contact
    add_index :phones, [:number, :contact_id], unique: true
    #Ex:- add_index("admin_users", "username")
  end
end
