require 'pp'
require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Gary", last_name: "Jipp", hourly_rate: 60)
@store1.employees.create(first_name: "Rahul", last_name: "Idk", hourly_rate: 60)
@store2.employees.create(first_name: "Andy", last_name: "Lindsay", hourly_rate: 100)
@store2.employees.create(first_name: "Francis", last_name: "Bourgoin", hourly_rate: 100)
@store2.employees.create(first_name: "Vasily", last_name: "Klimkin", hourly_rate: 100)

# pp Employee.all