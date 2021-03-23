class Answer < BaseModel
  table do
    belongs_to survey_question_answer : SurveyQuestionAnswer
    belongs_to user : User
  end
end
