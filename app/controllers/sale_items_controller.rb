class SaleItemsController < ApplicationController
  def index
    @sale_items = SaleItem.all
  end

  def show
    @sale_item = SaleItem.find(params[:id])
  end

  def new
    @sale_item = SaleItem.new
  end

  def create
    @sale_item = SaleItem.new(params[:sale_item])
    if @sale_item.save
      redirect_to @sale_item, :notice => "Successfully created sale item."
    else
      render :action => 'new'
    end
  end

  def edit
    @sale_item = SaleItem.find(params[:id])
  end

  def update
    @sale_item = SaleItem.find(params[:id])
    if @sale_item.update_attributes(params[:sale_item])
      redirect_to @sale_item, :notice  => "Successfully updated sale item."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @sale_item = SaleItem.find(params[:id])
    @sale_item.destroy
    redirect_to sale_items_url, :notice => "Successfully destroyed sale item."
  end
end
