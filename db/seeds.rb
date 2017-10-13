# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
factory = Factory.new(name: '伊思尔', uid: '1'.rjust(10, '0'))
factory.save!
puts 'Factory created !' if factory.persisted?

admin = User.new(email: 'admin@qq.com', password: '123abc..', category: 0, username: 'admin', phone: '18888888888', factory_id: factory.id)
admin.save!
puts 'Admin created.' if admin.persisted?
