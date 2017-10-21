class CreateExpends < ActiveRecord::Migration[5.1]
  def change
    create_table :expends do |t|
      t.string :reason
      t.decimal :amount, precision: 8, scale: 2
      t.string :creator
      t.string :note
      t.boolean :deleted

      t.timestamps
    end
  end
end
