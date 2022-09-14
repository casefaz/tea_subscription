require 'rails_helper'

RSpec.describe 'Subscription Cancellation' do 
  context 'happy path' do
    it 'successfully deletes the customers subscription' do
      customers = create_list(:customer, 2)
      subscriptions = create_list(:subscription, 4)

      cust_sub1 = create(:customer_subscription, customer_id: customers[0].id, subscription_id: subscriptions[0].id)
      cust_sub2 = create(:customer_subscription, customer_id: customers[0].id, subscription_id: subscriptions[1].id)
      cust_sub3 = create(:customer_subscription, customer_id: customers[0].id, subscription_id: subscriptions[2].id)
      cust_sub4 = create(:customer_subscription, customer_id: customers[1].id, subscription_id: subscriptions[3].id)

      expect(CustomerSubscription.count).to eq(4)
    end
  end
end