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
      expect(updated_sub).to have_key(:status)
      expect(updated_sub[:status]).to eq("cancelled")
    end
  end

  context 'sad path' do
    it 'returns an error if subscription doesnt exist' do
      patch "/api/v1/customers/1000000/subscriptions/9785"

      expect(response).to_not be_successful

      patch_error = JSON.parse(response.body, symbolize_names: true)
      expect(patch_error).to be_a(Hash)
      expect(patch_error[:error]).to eq("Couldn't find Subscription with 'id'=9785")
    end
  end
end