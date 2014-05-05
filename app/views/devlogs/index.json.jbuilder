json.array!(@devlogs) do |devlog|
  json.extract! devlog, :id, :message, :project_id
  json.url devlog_url(devlog, format: :json)
end
