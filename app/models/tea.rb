class Tea < ApplicationRecord
  belongs_to :farmer
  has_many :tier_teas
  has_many :tiers, through: :tier_teas

  enum category: [:white, :green, :black, :oolong, :puerh]
  validates_presence_of :name, :packaged_on
end
