class Subscription < ApplicationRecord
  belongs_to :customer
  belongs_to :tier

  enum status: [:active, :cancelled]
end
