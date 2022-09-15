class Subscription < ApplicationRecord
  belongs_to :customer
  belongs_to :tier

  enum status: [:active, :cancelled]
  validates_presence_of :customer_id
  validates_presence_of :tier_id
end
