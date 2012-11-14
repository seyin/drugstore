class PurchaseItem < ActiveRecord::Base
  attr_accessible :medicine_id, :purchase_id, :container, :quantity, :quantity_unit_container, :price, :due_date

  belongs_to :purchase
end
