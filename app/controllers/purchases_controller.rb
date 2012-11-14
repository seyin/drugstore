class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(params[:purchase])
    if @purchase.save
      redirect_to @purchase, :notice => "Successfully created purchase."
    else
      render :action => 'new'
    end
  end

  def edit
    @purchase = Purchase.find(params[:id])
  end

  def update
    @purchase = Purchase.find(params[:id])
    if @purchase.update_attributes(params[:purchase])
      redirect_to @purchase, :notice  => "Successfully updated purchase."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @purchase = Purchase.find(params[:id])
    @purchase.destroy
    redirect_to purchases_url, :notice => "Successfully destroyed purchase."
  end
end
