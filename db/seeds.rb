# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




User.delete_all
BankAccount.delete_all
20.times do |i| 

	u = User.create(name: "User #{i}")
	u.build_bank_account(account_number: rand(10**10).to_s)
	u.save!
end