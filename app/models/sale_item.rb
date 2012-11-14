class SaleItem < ActiveRecord::Base
  attr_accessible :medicine_id, :sale_id, :quantity, :price

  belongs_to :sale
end
