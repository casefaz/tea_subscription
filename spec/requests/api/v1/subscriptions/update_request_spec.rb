require 'rails_helper'

RSpec.describe 'Subscription Cancellation' do 
  context 'happy path' do
    it 'successfully deletes the customers subscription' do
      customers = create_list(:customer, 2)
      tiers = create_list(:tier, 3)
      subscription = create(:subscription, customer_id: customers[0].id, tier_id: tiers[0].id, status: 0)
      sub_params = { status: "cancelled" }
      expect(subscription.status).to eq('active')

      patch "/api/v1/customers/#{customers[0].id}/subscriptions/#{subscription.id}", params: sub_params

      expect(response).to be_successful
      updated_sub = JSON.parse(response.body, symbolize_names: true)
      binding.pry
      expect(updated_sub).to have_key(:status)
      expect(updated_sub[:status]).to eq("cancelled")
    end
  end
end