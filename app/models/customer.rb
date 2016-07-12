class Customer < ActiveRecord::Base
  include StringNormalizer
  
  has_many :products, class_name: 'ProductItem', dependent: :destroy
  
  validates :name, :abbreviation, presence: true
  
  before_validation do
    self.name = normalize_as_name(name)
    self.abbreviation = normalize_as_name(abbreviation)
  end
end
