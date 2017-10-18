# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
company = Company.new(name: 'yy', uid: '1'.rjust(10, '0'))
company.save!
puts 'Company created !' if company.persisted?

# User.transaction do
admin = User.new(email: 'admin@qq.com', password: '123abc..', username: 'admin', phone: '19999999999')
admin.save!
normal = User.new(email: 'normal@qq.com', password: '123abc..', username: 'normal', phone: '16666666666')
normal.save!
boss = User.new(email: 'boss@qq.com', password: '123abc..', username: 'boss', phone: '18888888888', category: User.categories[:company])
boss.save!
# end
puts 'Admin created.' if admin.persisted?
