class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :title
      t.text :addres
      t.text :description
      t.decimal :price
      t.integer :owner
      t.string :email
      t.string :phone
      t.string :photos

      t.timestamps
    end
  end
end
