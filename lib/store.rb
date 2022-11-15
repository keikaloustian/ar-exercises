class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }

  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validate :has_mens_or_womens_apparel

  def has_mens_or_womens_apparel
    # attribute should be set to :base if error is not associated with one specific attribute
    errors.add(:base, "Store must carry at least one of men's/women's apparel") unless
    (mens_apparel || womens_apparel)
    # use the property names in the conditional above, NOT the symbols
  end

end


# stores
#  id | name | annual_revenue | mens_apparel | womens_apparel | created_at | updated_at