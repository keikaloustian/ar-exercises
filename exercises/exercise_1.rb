require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# employees
#  id | store_id | first_name | last_name | hourly_rate | created_at | updated_at

# stores
#  id | name | annual_revenue | mens_apparel | womens_apparel | created_at | updated_at

burnaby = Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond = Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
gastown = Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.count


