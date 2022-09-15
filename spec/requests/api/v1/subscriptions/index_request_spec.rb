require 'rails_helper'

RSpec.describe 'Customer Subscription Endpoint', type: :request do 
  it 'shows all of the subscriptions (active and cancelled) belonging to a specific customer' do 
    customers = create_list(:customer, 2)
    tiers = create_list(:tier, 3)

    subscription1 = create(:subscription, customer: customers[0], tier: tiers[0], status: 0)
    subscription2 = create(:subscription, customer: customers[0], tier: tiers[1], status: 1)
    subscription3 = create(:subscription, customer: customers[1], tier: tiers[2], status: 0)

    get "/api/v1/customers/#{customers[0].id}/subscriptions"

    expect(response).to be_successful
    customer_subs = JSON.parse(response.body, symbolize_names: true)

    expect(customer_subs[:data].count).to eq(2)

    first_sub = customer_subs[:data].first
    expect(first_sub).to have_key(:id)
    expect(first_sub[:id]).to be_a(String)
    expect(first_sub).to have_key(:type)
    expect(first_sub[:type]).to be_a(String)
    expect(first_sub).to have_key(:attributes)
    expect(first_sub[:attributes]).to have_key(:price)
    expect(first_sub[:attributes][:price]).to be_a(Float)
    expect(first_sub[:attributes]).to have_key(:date_shipped)
    expect(first_sub[:attributes][:date_shipped]).to be_a(String)
    expect(first_sub[:attributes]).to have_key(:frequency)
    expect(first_sub[:attributes][:frequency]).to be_an(Integer)
    expect(first_sub[:attributes][:price]).to_not eq(tiers[2].price)
  end
end