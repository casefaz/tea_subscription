require 'rails_helper'

RSpec.describe TierTea, type: :model do
  describe 'relationships' do 
    it { should belong_to :tea }
    it { should belong_to :tier }
  end
end
