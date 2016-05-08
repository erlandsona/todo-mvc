TodoType = GraphQL::ObjectType.define do
  name "Todo"
  description "Item for the checklist of things to get done."
  field :todo, types.String
end
