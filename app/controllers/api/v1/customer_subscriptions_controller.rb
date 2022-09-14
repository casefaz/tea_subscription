class Api::V1::CustomerSubscriptionsController < ApplicationController
  def index
    customer = Customer.find(params[:id])
    render json: SubscriptionSerializer.new(customer.subscriptions)
  end

  def destroy
    
  end
end