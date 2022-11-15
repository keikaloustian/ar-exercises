require 'pp'
require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# pp Store.all
pp "Total revenue: " + Store.sum(:annual_revenue).to_s
pp "Average revenue: " + Store.average(:annual_revenue).to_s

# .length calculates how many records are in a query that's been done already
# .count makes a COUNT query
# .size adapts automatically?

pp "# of stores generating $1M+ annually: " + Store.where('annual_revenue >= ?', 1000000).size().to_s

# pp "# of stores generating $1M+ annually: " + Store.where('annual_revenue >= ?', 1000000).count().to_s

# pp "# of stores generating $1M+ annually: " + Store.where('annual_revenue >= ?', 1000000).length().to_s