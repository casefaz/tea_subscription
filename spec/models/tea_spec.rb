require 'rails_helper'

RSpec.describe Tea, type: :model do
  describe 'relationships' do 
    it { should belong_to :farmer }
    it { should have_many :subscription_teas }
    it { should have_many(:subscriptions).through(:subscription_teas) }
  end 
end
