require 'rails_helper'

RSpec.describe Tier, type: :model do
  describe 'relationships' do 
    it { should have_many :subscriptions }
    it { should have_many(:customers).through(:subscriptions) }
    it { should have_many :tier_teas }
    it { should have_many(:teas).through(:tier_teas) }
  end
end
