# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(1..26).each do |number|
  User.create(name: 'testuser' + number.to_s, email: 'testemailaddress' + number.to_s + '@Techacademy.jp', password: 'testpassword' + number.to_s)
end

i = 1
while i< 26
    (1..26).each do |number|
      User.find(i).microposts.create(content: 'アポロ' + number.to_s + '号！！')
    end
    i +=1
end