class Sale < ActiveRecord::Base
  attr_accessible :description

  has_many :sale_items
end
