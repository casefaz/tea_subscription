require 'rails_helper'

RSpec.describe 'Subscription Cancellation' do 
  context 'happy path' do
    xit 'successfully deletes the customers subscription' do
      customers = create_list(:customer, 2)
      tiers = create_list(:tier, 3)

      cust_sub = create(:subscription, customer_id: customers[0].id, tier_id: tiers[0].id)
      expect(CustomerSubscription.count, status: 1).to eq(1)

      patch "/api/v1/customers/#{customers[0].id}/subscriptions/#{subscriptions[0].id}"

      expect(response).to be_successful

    end
  end
end