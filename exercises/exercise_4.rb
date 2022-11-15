require 'pp'
require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts store.name
  puts store.annual_revenue
end


# Write the conditions string with ? as placeholders
# Additional parameters to the .where method replace the ? to form the query
@womens_stores = Store.where('womens_apparel = ? AND annual_revenue < ?', true, 1000000)
# pp @womens_stores

# Alternative approach using range
# @womens_stores = Store.where(womens_apparel: true, annual_revenue: ...1000000)