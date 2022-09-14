require 'rails_helper'

RSpec.describe 'Subscription Sign Up', type: :request do 
  context 'happy path' do 
    it 'can create a new customer tea subscription' do 
      customer = create(:customer)
      subscription = create(:subscription)
      customer_sub_params = ({
                              customer: customer.id,
                              subscription: subscription.id
                            })
      headers = {"CONTENT_TYPE" => "application/json"}

      post "/api/v1/subscriptions"
      new_subscription = Subscription.last

      expect(response).to be_successful
    end
  end
end