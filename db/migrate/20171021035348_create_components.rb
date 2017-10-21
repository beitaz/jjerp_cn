class CreateComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :components do |t|
      t.string :name
      t.string :cname
      t.string :uid
      t.decimal :price, precision: 8, scale: 2
      t.string :desc
      t.string :note
      t.boolean :deleted

      t.timestamps
    end
  end
end
