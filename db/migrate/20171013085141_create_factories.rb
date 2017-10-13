class CreateFactories < ActiveRecord::Migration[5.1]
  def change
    create_table :factories do |t|
      t.string :name, comment: '工厂名称'
      t.string :uid, null: false, comment: '编号'
      t.string :phone, comment: '电话'
      t.string :contacter, comment: '联系人'
      t.string :telephone, comment: '联系人电话'
      t.datetime :expired_at, comment: '过期时间'
      t.boolean :deleted, comment: '标记删除'
      t.string :province, comment: '省份'
      t.string :city, comment: '城市'
      t.string :county, comment: '区县'
      t.string :address, comment: '地址'

      t.timestamps
    end

    add_index :factories, :uid, unique: true
    add_index :factories, :phone, unique: true
  end
end
