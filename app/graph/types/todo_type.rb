TodoType = GraphQL::ObjectType.define do
  name "Todo"
  description "Todo"
  interfaces [NodeIdentification.interface]
  global_id_field :id
  field :name, !types.String, "Todo name"
end
