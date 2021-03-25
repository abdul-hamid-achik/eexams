@[GraphQL::Object]
class Queries::Surveys
  include GraphQL::ObjectType

  def surveys : Array(Survey)
    SurveyQuery.new
  end

  def survey(id) : Survey
    SurveyQuery.get
  end
end
