require "./types/*"

@[GraphQL::Object]
class Api::Query
  include GraphQL::ObjectType
  include GraphQL::QueryType
end
