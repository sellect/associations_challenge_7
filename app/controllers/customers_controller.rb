class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
 def index
   @customers = Customer.all

 end

 def new
   @customer = Customer.new
 end

 def create
    @customer = Customer.new(order_params)

   respond_to do |format|
     if @customer.save
       format.html { redirect_to '/customers', notice: 'Customer was successfully created.' }
     end
   end
 end





 private
 def set_article
    @customer = Customer.find(params[:id])
  end
 def order_params
   params.require(:customer).permit(:email)
 end


end
