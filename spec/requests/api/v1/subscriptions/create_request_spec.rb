require 'rails_helper'

RSpec.describe 'Subscription Sign Up', type: :request do 
  context 'happy path' do 
    it 'can create a new customer tea subscription' do 
      customer = create(:customer)
      tier = create(:tier)

      subscription_params = ({
                              customer_id: customer.id,
                              tier_id: tier.id
                            })

      post "/api/v1/subscriptions", params: subscription_params

      new_subscription = Subscription.last
      expect(response).to be_successful
      expect(new_subscription.customer_id).to eq(subscription_params[:customer_id])
      expect(new_subscription.tier_id).to eq(subscription_params[:tier_id])

      new_sub = JSON.parse(response.body, symbolize_names: true)
      expect(new_sub[:data].keys).to include(:id, :type, :attributes)
      expect(new_sub[:data][:attributes].keys).to include(:customer_id, :tier_id)
      expect(new_sub[:data][:attributes][:customer_id]).to eq(customer.id)
      expect(new_sub[:data][:attributes][:tier_id]).to eq(tier.id)
    end
  end

  context 'sad path' do
    it 'produces an error if fields are missing' do
      subscription_params = ({
        customer_id: 999999,
        tier_id: 0,
        status: 'cancelled'
      })

      post "/api/v1/subscriptions", params: subscription_params

      expect(response).to_not be_successful
      expect(Subscription.last).to eq(nil)
    end
  end
end