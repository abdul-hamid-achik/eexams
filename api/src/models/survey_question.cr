class SurveyQuestion < BaseModel
  table do
    belongs_to survey : Survey
    belongs_to question : Question
  end
end
