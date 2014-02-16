json.array!(@entries) do |entry|
  json.extract! entry, :id, :title, :description, :due_date, :minute_id, :responsible, :finished
  json.url entry_url(entry, format: :json)
end
