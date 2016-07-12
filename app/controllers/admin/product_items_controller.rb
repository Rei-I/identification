class Admin::ProductItemsController < ApplicationController
  def index
    @product_items = ProductItem.order(:customer_id, :name)
    @product_items = @product_items.includes(:customer)
    @product_items = @product_items.page(params[:page])
    
  end
  
  def new
    @product_item = ProductItem.new
  end
  
  def show
    product_items = ProductItem.find(params[:id])
    redirect_to [:edit, :admin, product_items]
  end
  
  def create
    @product_item = ProductItem.new(product_item_params)
    if @product_item.save
      flash.notice = Customer.find(@product_item.customer_id).name + "に" + @product_item.name + 'を登録しました'
      redirect_to :admin_product_items
    else
      flash.alert = '入力が不正です'
      render action: :new
    end
  end
  
  def destroy
    product_item = ProductItem.find(params[:id])
    name = product_item.name
    product_item.destroy!
    flash.notice = name + 'を削除しました'
    redirect_to :admin_product_items
  end
  
  def edit
    @product_item = ProductItem.find(params[:id])
  end
  
  def update
    @product_item = ProductItem.find(params[:id])
    @product_item.assign_attributes(product_item_params)
    if @product_item.save
      flash.notice = @product_item.name + 'を更新しました'
      redirect_to :admin_product_items
    else
      flash.alert = '入力が不正です'
      render action: 'edit'
    end
  end
  
  def download
    @product_items = ProductItem.all
    @customers = Customer.all
  end
  
  private
  def product_item_params
    params.require(:product_item).permit(
      :customer_id, :name, :use_pokanon, :qrcode, :use_qr
    )
  end
end
