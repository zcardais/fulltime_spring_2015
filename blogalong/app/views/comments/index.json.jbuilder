json.array!(@comments) do |comment|
  json.extract! comment, :id, :comment_text
  json.url comment_url(comment, format: :json)
end
