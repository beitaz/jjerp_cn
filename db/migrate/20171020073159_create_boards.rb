class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.string :name
      t.string :cname
      t.string :uid
      t.integer :ply
      t.integer :texture
      t.integer :color
      t.decimal :price, precision: 8, scale: 2
      t.integer :stock
      t.string :note

      t.timestamps
    end
  end
end
