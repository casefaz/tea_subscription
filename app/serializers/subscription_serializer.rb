class SubscriptionSerializer
  include JSONAPI::Serializer
  attributes :customer_id, :tier_id, :status
end
