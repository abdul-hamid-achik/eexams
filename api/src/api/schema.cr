require "./types/*"
require "../queries/survey_query"

@[GraphQL::Object]
class Types::Survey
  include GraphQL::ObjectType

  @[GraphQL::Field]
  def description : String
    ""
  end
end

@[GraphQL::Object]
class Api::Query
  include GraphQL::ObjectType
  include GraphQL::QueryType

  @[GraphQL::Field]
  def surveys : String
    survey_collection = SurveyQuery.new
    serialized_collection = SurveySerializer.for_collection survey_collection
    serialized_collection.to_json
  end
end
