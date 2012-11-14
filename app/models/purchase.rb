class Purchase < ActiveRecord::Base
  attr_accessible :name

  has_many :purchase_items
end
