class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :property_name
      t.integer :rent
      t.text :street_address
      t.integer :age
      t.text :note
    end
  end
end
