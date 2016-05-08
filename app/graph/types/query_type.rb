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
    description "Item for the checklist of things to get done."
    resolve -> (obj, args, ctx) do
      Hashie::Mash.new( { id: rand(1000), name: 'Fabio' } )
    end
  end

  field :node, field: NodeIdentification.field
end
