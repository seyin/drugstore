class PurchaseItemsController < ApplicationController
  def index
    @purchase_items = PurchaseItem.all
  end

  def show
    @purchase_item = PurchaseItem.find(params[:id])
  end

  def new
    @purchase_item = PurchaseItem.new
  end

  def create
    @purchase_item = PurchaseItem.new(params[:purchase_item])
    if @purchase_item.save
      redirect_to @purchase_item, :notice => "Successfully created purchase item."
    else
      render :action => 'new'
    end
  end

  def edit
    @purchase_item = PurchaseItem.find(params[:id])
  end

  def update
    @purchase_item = PurchaseItem.find(params[:id])
    if @purchase_item.update_attributes(params[:purchase_item])
      redirect_to @purchase_item, :notice  => "Successfully updated purchase item."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @purchase_item = PurchaseItem.find(params[:id])
    @purchase_item.destroy
    redirect_to purchase_items_url, :notice => "Successfully destroyed purchase item."
  end
end
