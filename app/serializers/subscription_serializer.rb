class SubscriptionSerializer
  include JSONAPI::Serializer
  attributes :customer_id, :subscription_id, :status
end
