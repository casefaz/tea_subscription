require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe 'relationships' do 
    it { should belong_to :customer }
    it { should belong_to :tier }
  end

  describe 'validations' do
    it { should define_enum_for(:status).with_values([:active, :cancelled])}
  end
end
