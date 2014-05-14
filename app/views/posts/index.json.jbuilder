json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :date
  json.url post_url(post, format: :json)
end
