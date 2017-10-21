class CreateIncomes < ActiveRecord::Migration[5.1]
  def change
    create_table :incomes do |t|
      t.string :origin
      t.string :origin_id
      t.string :target
      t.decimal :amount, precision: 8, scale: 2
      t.string :creator
      t.string :note
      t.boolean :deleted

      t.timestamps
    end
  end
end
