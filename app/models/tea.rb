class Tea < ApplicationRecord
  belongs_to :farmer
  has_many :subscription_teas
  has_many :subscriptions, through: :subscription_teas

  enum type: [:white, :green, :black, :oolong, :puerh]
  validates_presence_of :name, :packaged_on
end
