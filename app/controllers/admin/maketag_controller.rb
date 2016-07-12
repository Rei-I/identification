class Admin::MaketagController < ApplicationController
  def index

#    @customer = Customer.new
#    @customers = Customer.all
#    
#    @products = ProductItem.select(:customer_id).distinct
#    @count = ProductItem.all.index_by(&:customer_id).keys# p luck(:customer_id)
#    
#    @customers = Customer.where(id: ProductItem.all.index_by(&:customer_id).keys)
    
   # render text: @count
  #  render text: @customers.exists?(id: ProductItem.sustomer.id)
    @product = ProductItem.new
    @product2 = ProductItem.new
    @form = Admin::IdentificationForm.new
  end
  
  def product_select
    if request.xhr?
      render partial: 'product_select', locals: { product_id: params[:product_id] }
    else
      render action: confilm
    end
  end
  
  def product_select2
    if request.xhr?
      render partial: 'product_select2', locals: { product_id: params[:product_id] }
    end
  end
  
  def confirm

    @product = ProductItem.find(params[:customer][:id])
    @order = params[:order]
    @quantity = params[:quantity]
    @bikou = params[:text][0]

    @product2 = ProductItem.find(params[:customer2][:id])
    @order2 = params[:order2]
    @quantity2 = params[:quantity2]
    @bikou2 = params[:text][1]
  end
end
