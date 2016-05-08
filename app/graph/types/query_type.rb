# type Query {
#   hero: Character
#   human(id: String!): Human
#   droid(id: String!): Droid
# }
QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"

  field :todo do
    type TodoType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) do
      Todo.find(args[:id])
    end
  end

  field :simple do
    type SimpleType
    description "Simple Stuff"
    resolve -> (obj, args, ctx) do
    end
  end

  field :node, field: NodeIdentification.field
end
