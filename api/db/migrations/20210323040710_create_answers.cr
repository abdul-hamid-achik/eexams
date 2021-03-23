class CreateAnswers::V20210323040710 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Answer) do
      primary_key id : UUID
      add_timestamps

      add_belongs_to survey_question_answer : SurveyQuestionAnswer, on_delete: :cascade, foreign_key_type: UUID
      add_belongs_to creator : User, on_delete: :cascade, foreign_key_type: UUID
    end
  end

  def rollback
    drop table_for(Answer)
  end
end
