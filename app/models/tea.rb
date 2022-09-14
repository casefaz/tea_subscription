class Tea < ApplicationRecord
  belongs_to :farmer
  has_many :subscription_teas
  has_many :subscriptions, through: :subscription_teas
end
