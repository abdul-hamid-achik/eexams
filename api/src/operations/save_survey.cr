class SaveSurvey < Survey::SaveOperation
  # To save user provided params to the database, you must permit them
  # https://luckyframework.org/guides/database/validating-saving#perma-permitting-columns
  #
  # permit_columns description, started_at, ended_at, is_open
end
