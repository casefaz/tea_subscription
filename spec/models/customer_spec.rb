require 'rails_helper'

RSpec.describe Customer, type: :model do
  should { have_many(:subscriptions).through(:customer_subscriptions) }
end
