class Api::V1::SubscriptionsController < ApplicationController
  def index
    # binding.pry
    customer = Customer.find(params[:customer_id])
    render json: TierSerializer.new(customer.tiers)
  end

  def create
    # binding.pry
    new_sub = Subscription.new(sub_params)
    if new_sub.save
      render json: SubscriptionSerializer.new(new_sub), status: :created
    else
      render status: 404
    end
  end

  def update
    # binding.pry
    subscription = Subscription.find(params[:id])
    subscription.update(sub_params)
    render json: subscription
  end

  private
    def sub_params
      params.permit(:customer_id, :tier_id, :status)
    end
end