class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, presence: true

  # :in option of numericality only available in Ruby 6.1+
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }

  # validates whether the associated object or objects are all valid themselves
  validates_associated :store

  # checks that the foreign key is not empty
  validates :store, presence: true

  
end

# employees
#  id | store_id | first_name | last_name | hourly_rate | created_at | updated_at
