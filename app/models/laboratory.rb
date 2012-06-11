class Laboratory < ActiveRecord::Base
  attr_accessible :desciption, :name
  has_many :medicines
end
