require 'test_helper'

class SaleItemTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert SaleItem.new.valid?
  end
end
