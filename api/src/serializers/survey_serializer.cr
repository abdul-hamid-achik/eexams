class SurveySerializer < BaseSerializer
  def initialize(@survey : Survey)
  end

  def render
    {
      description: @survey.description,
      started_at:  @survey.started_at,
      ended_at:    @survey.ended_at,
      is_open:     @survey.is_open,
    }
  end
end
