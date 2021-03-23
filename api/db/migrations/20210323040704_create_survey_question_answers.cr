class CreateSurveyQuestionAnswers::V20210323040704 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(SurveyQuestionAnswer) do
      primary_key id : UUID
      add_timestamps

      add_belongs_to survey_question : SurveyQuestion, on_delete: :cascade, foreign_key_type: UUID
      add_belongs_to offered_answer : OfferedAnswer, on_delete: :cascade, foreign_key_type: UUID
    end
  end

  def rollback
    drop table_for(SurveyQuestionAnswer)
  end
end
