class AddInfoColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string, null: false, index: true, comment: '用户名'
    add_column :users, :phone, :string, comment: '电话'
    add_column :users, :category, :integer, default: 1, comment: '用户种类'
    add_column :users, :avatar, :string, comment: '头像'
    add_column :users, :deleted, :boolean, column_options: { default: false, comment: '标记删除' }
  end
end
