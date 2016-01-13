json.array!(@requests) do |request|
  json.extract! request, :id, :user_id, :requestor
  json.url request_url(request, format: :json)
end
