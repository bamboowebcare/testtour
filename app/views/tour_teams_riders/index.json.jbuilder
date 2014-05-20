json.array!(@tour_teams_riders) do |tour_teams_rider|
  json.extract! tour_teams_rider, :id, :tour_team_id, :rider_id
  json.url tour_teams_rider_url(tour_teams_rider, format: :json)
end
