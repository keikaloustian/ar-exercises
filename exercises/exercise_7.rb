require 'pp'
require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
# require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# puts @store2.employees.create(first_name: "Benny", last_name: "Bacon", hourly_rate: 10).valid?
# @store2.employees.create!(first_name: "Benny", last_name: "Bacon", hourly_rate: 250)

# print 'VALIDATION RESULT: '
# store = Store.create(name: 'T', annual_revenue: 0, mens_apparel: true, womens_apparel: false)
# pp store.errors

# pp @store2

# pp Employee.all

print 'Enter a store name: '
store_name = $stdin.gets.chomp
new_store = Store.create(name: store_name)

# pp new_store.errors.full_messages

new_store.errors.full_messages.each do |message|
  puts message
end