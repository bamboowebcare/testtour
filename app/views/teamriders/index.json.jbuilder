json.array!(@teamriders) do |teamrider|
  json.extract! teamrider, :id, :team_id, :rider_id
  json.url teamrider_url(teamrider, format: :json)
end
