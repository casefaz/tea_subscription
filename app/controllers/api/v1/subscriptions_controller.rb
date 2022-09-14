class Api::V1::SubscriptionsController < ApplicationController
  def create
    new_sub = CustomerSubscription.new(customer_sub_params)
    
    # binding.pry
    if new_sub.save
      render json: CustomerSubscriptionSerializer.new(new_sub), status: :created
    else
      render status: 404
    end
  end

  private
    def customer_sub_params
      params.permit(:customer_id, :subscription_id)
    end
end