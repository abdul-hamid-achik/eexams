class SurveyQuestionAnswer < BaseModel
  table do
    belongs_to survey_question : SurveyQuestion
    belongs_to offered_answer : OfferedAnswer
  end
end
