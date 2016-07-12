class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.order(:id)
  end
  
  def new
    @customer = Customer.new
  end
  
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash.notice = @customer.name + 'を登録しました'
      redirect_to :admin_customers
    else
      flash.alert = '入力に誤りがあります'
      render action: :new
    end
  end
  
    def edit
    @customer = Customer.find(params[:id])
  end
  
  def update
    @customer = Customer.find(params[:id])
    @customer.assign_attributes(customer_params)
    if @customer.save
      flash.notice = @customer.name + 'を更新しました'
      redirect_to :admin_customers
    else
      flash.alert = '入力に誤りがあります'
      render action: 'edit'
    end
  end
  
  def destroy
    customer = Customer.find(params[:id])
    name = customer.name

    if ProductItem.exists?(id: customer.id)
      flash.alert = '機種が登録されています、削除できません'
    else
      customer.destroy!
      flash.notice = name + 'を削除しました'
    end
    redirect_to :admin_customers
  end
  
  private
  def customer_params
    params.require(:customer).permit(:name, :abbreviation)
  end
end
