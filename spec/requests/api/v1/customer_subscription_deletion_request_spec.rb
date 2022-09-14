require 'rails_helper'

RSpec.describe 'Subscription Cancellation' do 
  context 'happy path' do
    it 'successfully deletes the customers subscription' do
      customers = create_list(:customer, 2)
      subscriptions = create_list(:subscription, 4)

      cust_sub = create(:customer_subscription, customer_id: customers[0].id, subscription_id: subscriptions[0].id)
      expect(CustomerSubscription.count).to eq(1)

      delete "/api/v1/customers/#{customers[0].id}/subscriptions/#{subscriptions[0].id}"

      expect(response).to be_successful
      expect(CustomerSubscription.count).to eq(0)
    end
  end
end