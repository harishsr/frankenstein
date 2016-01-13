json.array!(@requests) do |request|
  json.extract! request, :id, :user_id, :type
  json.url request_url(request, format: :json)
end
