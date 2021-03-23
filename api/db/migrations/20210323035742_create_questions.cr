class CreateQuestions::V20210323035742 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Question) do
      primary_key id : UUID
      add_timestamps
      add text : String
    end
  end

  def rollback
    drop table_for(Question)
  end
end
