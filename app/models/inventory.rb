class Inventory < ActiveRecord::Base
  attr_accessible :medicine_id, :quantity, :sale_price

  belongs_to :medicine
end
