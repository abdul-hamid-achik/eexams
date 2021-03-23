class Survey < BaseModel
  table do
    column description : String
    column started_at : Time
    column ended_at : Time
    column is_open : Bool
  end
end
