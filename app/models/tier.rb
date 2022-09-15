class Tier < ApplicationRecord
  has_many :subscriptions
  has_many :customers, through: :subscriptions
  has_many :tier_teas
  has_many :teas, through: :tier_teas

  enum frequency: [:weekly, :monthly, :quarterly]
end
