class SubscriptionSerializer
  include JSONAPI::Serializer
  attributes :customer_id, :subscription_id
end
