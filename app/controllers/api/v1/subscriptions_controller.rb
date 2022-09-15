class Api::V1::SubscriptionsController < ApplicationController
  def index
    binding.pry
    customer = Customer.find(params[:customer_id])
    render json: TierSerializer.new(customer.tiers)
  end

  # def create
  #   new_sub = Subscription.new(sub_params)
  #   if new_sub.save
  #     render json: SubscriptionSerializer.new(new_sub), status: :created
  #   else
  #     render status: 404
  #   end
  # end

  # private
  #   def sub_params
  #     params.permit(:customer_id, :subscription_id)
  #   end
end