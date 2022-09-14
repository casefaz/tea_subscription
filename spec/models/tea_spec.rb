require 'rails_helper'

RSpec.describe Tea, type: :model do
  describe 'relationships' do 
    it { should belong_to :farmer }
    it { should have_many :subscription_teas }
    it { should have_many(:subscriptions).through(:subscription_teas) }
  end

  describe 'validations' do 
    it { should define_enum_for(:type).with_values([:white, :green, :black, :oolong, :puerh])}
    it { should validate_presence_of :name }
    it { should validate_presence_of :packaged_on }
  end
end
