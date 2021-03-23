class SurveyFactory < Avram::Factory
  def initialize
    description "description"
    started_at Time.utc
    is_open false
  end
end
