require 'rails_helper'

RSpec.describe 'Customer Subscription Endpoint' do 
  it 'shows all of the subscriptions (active and cancelled) belonging to a specific customer' do 
    customers = create_list(:customer, 2)
    subscriptions = create_list(:subscription, 3)

    customer_subscription1 = create(:customer_subscription, customer: customers[0], subscription: subscriptions[0])
    customer_subscription1 = create(:customer_subscription, customer: customers[0], subscription: subscriptions[1])
    customer_subscription1 = create(:customer_subscription, customer: customers[1], subscription: subscriptions[2])

    get "/api/v1/customers/#{customers[0].id}/subscriptions"

    expect(response).to be_successful
  end
end