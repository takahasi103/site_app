class Public::AddressesController < ApplicationController
  def index
    @address = Address.new
    @addresses = Address.all
    @customer = current_customer
  end
  
  def create
    @address = Address.new(address_params)
    @address.save
    redirect_to request.referer
  end
  
  def edite
  end
  
  private
  
  def address_params
    params.require(:address).permit( :customer_id, :name, :address)
  end
  
end
