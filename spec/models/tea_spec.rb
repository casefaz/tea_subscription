require 'rails_helper'

RSpec.describe Tea, type: :model do
  describe 'relationships' do 
    it { should belong_to :farmer }
    it { should have_many :tier_teas }
    it { should have_many(:tiers).through(:tier_teas) }
  end

  describe 'validations' do 
    it { should define_enum_for(:category).with_values([:white, :green, :black, :oolong, :puerh])}
    it { should validate_presence_of :name }
    it { should validate_presence_of :packaged_on }
  end
end
