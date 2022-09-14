require 'rails_helper'

RSpec.describe 'Subscription Sign Up', type: :request do 
  context 'happy path' do 
    it 'can create a new customer tea subscription' do 
      customer = create(:customer)

      subscription_params = ({
                              name: 'Monthly Tea Club',
                              price: 30.00,
                              date_shipped: "2022-09-14",
                              frequency: 1
                            })
      headers = {"CONTENT_TYPE" => "application/json"}

      post "/api/v1/subscriptions"
      new_subscription = Subscription.last

      expect(response).to be_successful
    end
  end
end