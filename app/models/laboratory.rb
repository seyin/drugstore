class Laboratory < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :medicines
end
