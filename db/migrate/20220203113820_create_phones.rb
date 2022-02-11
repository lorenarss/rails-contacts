class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.integer :number
      t.string :type_of
      t.string :principal

      t.timestamps
    end
    add_index :phones, [:number, :contact_id], unique: true
  end
end
