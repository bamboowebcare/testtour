json.array!(@tour_teams) do |tour_team|
  json.extract! tour_team, :id, :name, :user_id, :poule_id
  json.url tour_team_url(tour_team, format: :json)
end
