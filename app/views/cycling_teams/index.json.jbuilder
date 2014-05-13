json.array!(@cycling_teams) do |cycling_team|
  json.extract! cycling_team, :id, :name, :description, :logo, :tdf
  json.url cycling_team_url(cycling_team, format: :json)
end
