require 'test_helper'

class PurchaseItemTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert PurchaseItem.new.valid?
  end
end
