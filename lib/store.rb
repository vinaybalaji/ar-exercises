class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true
  validates :annual_revenue, presence: true
  validates_length_of :name, minimum: 3
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 } 
  validate :men_or_women


  def men_or_women
    if !mens_apparel && !womens_apparel
      errors.add :apparel, "Have to sell either men or women apparel"
    end
  end

end
