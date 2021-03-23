require "graphql"

@[GraphQL::Object]
class Survey
  include GraphQL::ObjectType

  @[GraphQL::Field]
  def description : String
    ""
  end
end
