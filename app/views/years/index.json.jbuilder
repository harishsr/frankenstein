json.array!(@years) do |year|
  json.extract! year, :id, :user_id, :when
  json.url year_url(year, format: :json)
end
