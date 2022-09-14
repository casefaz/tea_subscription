class Api::V1::CustomerSubscriptionsController < ApplicationController
  def index
    customer = Customer.find(params[:id])
    render json: SubscriptionSerializer.new(customer.subscriptions)
  end

  def destroy
    # binding.pry
    render json: CustomerSubscription.destroy(customer_sub_params)
  end

  private
    def customer_sub_params
      params.permit(:customer_id, :subscription_id)
    end
end