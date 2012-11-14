require 'test_helper'

class SaleItemsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => SaleItem.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    SaleItem.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    SaleItem.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to sale_item_url(assigns(:sale_item))
  end

  def test_edit
    get :edit, :id => SaleItem.first
    assert_template 'edit'
  end

  def test_update_invalid
    SaleItem.any_instance.stubs(:valid?).returns(false)
    put :update, :id => SaleItem.first
    assert_template 'edit'
  end

  def test_update_valid
    SaleItem.any_instance.stubs(:valid?).returns(true)
    put :update, :id => SaleItem.first
    assert_redirected_to sale_item_url(assigns(:sale_item))
  end

  def test_destroy
    sale_item = SaleItem.first
    delete :destroy, :id => sale_item
    assert_redirected_to sale_items_url
    assert !SaleItem.exists?(sale_item.id)
  end
end
