class TierSerializer
  include JSONAPI::Serializer
  attributes :price, :date_shipped, :frequency, :name
end
