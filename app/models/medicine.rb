class Medicine < ActiveRecord::Base
  attr_accessible :commercial_name, :concentration, :generic_name, :laboratory_id, :presentation_id
  belongs_to :laboratory
  belongs_to :presentation
end
