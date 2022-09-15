class TierSerializer
  include JSONAPI::Serializer
  attributes :price, :active, :date_shipped, :frequency, :name
end
