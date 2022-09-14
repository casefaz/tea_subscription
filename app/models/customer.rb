class Customer < ApplicationRecord
  has_many :customer_subscriptions
  has_many :subscriptions, through: :customer_subscriptions

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :street_address
  validates_presence_of :city
  validates_presence_of :zip
end
