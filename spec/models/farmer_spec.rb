require 'rails_helper'

RSpec.describe Farmer, type: :model do
 describe 'relationships' do 
  it { should have_many :teas }
 end
end
