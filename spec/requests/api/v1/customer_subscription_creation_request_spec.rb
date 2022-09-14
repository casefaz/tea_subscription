require 'rails_helper'

RSpec.describe 'Subscription Sign Up', type: :request do 
  context 'happy path' do 
    it 'can create a new customer tea subscription' do 
      customer = create(:customer)
      subscription = create(:subscription)
      # binding.pry
      customer_sub_params = ({
                              customer_id: customer.id,
                              subscription_id: subscription.id
                            })

      post "/api/v1/subscriptions", params: customer_sub_params
      # binding.pry
      new_subscription = CustomerSubscription.last

      expect(response).to be_successful
      expect(new_subscription.customer_id).to eq(customer_sub_params[:customer_id])
      expect(new_subscription.subscription_id).to eq(customer_sub_params[:subscription_id])

      new_sub = JSON.parse(response.body, symbolize_names: true)
      # binding.pry
      expect(new_sub[:data].keys).to include(:id, :type, :attributes)
      expect(new_sub[:data][:attributes].keys).to include(:customer_id, :subscription_id)
      expect(new_sub[:data][:attributes][:customer_id]).to eq(customer.id)
      expect(new_sub[:data][:attributes][:subscription_id]).to eq(subscription.id)
    end
  end
end