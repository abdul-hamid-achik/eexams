@[GraphQL::Object]
class Types::Survey
  include GraphQL::ObjectType

  @[GraphQL::Field]
  def description : String
    ""
  end
end
