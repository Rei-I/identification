class ProductItem < ActiveRecord::Base
  include StringNormalizer
  
  belongs_to :customer, class_name: 'Customer', foreign_key: 'customer_id'
  
  validates :name, presence: true
  
  before_validation do
    self.name = normalize_as_name(name)
  end
end
