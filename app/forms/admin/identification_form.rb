class Admin::IdentificationForm
  include ActiveModel::Model
  
  attr_accessor :name, :order, :quantity, :pokanon, :notes
end