class InventoriesController < ApplicationController
  def index
    @inventories = Inventory.all
  end

  def show
    @inventory = Inventory.find(params[:id])
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(params[:inventory])
    if @inventory.save
      redirect_to @inventory, :notice => "Successfully created inventory."
    else
      render :action => 'new'
    end
  end

  def edit
    @inventory = Inventory.find(params[:id])
  end

  def update
    @inventory = Inventory.find(params[:id])
    if @inventory.update_attributes(params[:inventory])
      redirect_to @inventory, :notice  => "Successfully updated inventory."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy
    redirect_to inventories_url, :notice => "Successfully destroyed inventory."
  end
end
