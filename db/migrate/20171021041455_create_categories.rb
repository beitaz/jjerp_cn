class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :cname
      t.string :uid
      t.boolean :deleted

      t.timestamps
    end
  end
end
