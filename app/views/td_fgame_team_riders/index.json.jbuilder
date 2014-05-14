json.array!(@td_fgame_team_riders) do |td_fgame_team_rider|
  json.extract! td_fgame_team_rider, :id, :tdfgameteam_id, :rider_id
  json.url td_fgame_team_rider_url(td_fgame_team_rider, format: :json)
end
