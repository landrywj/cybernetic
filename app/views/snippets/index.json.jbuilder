json.array!(@snippets) do |snippet|
  json.extract! snippet, :id, :technology, :code
  json.url snippet_url(snippet, format: :json)
end
