class AddContactToPhone < ActiveRecord::Migration[6.1]
  def change
    add_reference :phones, :contact
  end
end
