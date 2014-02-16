json.array!(@minutes) do |minute|
  json.extract! minute, :id, :date, :members
  json.url minute_url(minute, format: :json)
end
