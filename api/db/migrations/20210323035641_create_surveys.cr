class CreateSurveys::V20210323035641 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Survey) do
      primary_key id : UUID
      add_timestamps
      add description : String
      add started_at : Time
      add ended_at : Time
      add is_open : Bool
    end
  end

  def rollback
    drop table_for(Survey)
  end
end
