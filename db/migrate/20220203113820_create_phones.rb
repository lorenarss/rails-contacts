class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.integer :number
      t.string :type_of
      t.string :principal

      t.timestamps
    end
  end
end
