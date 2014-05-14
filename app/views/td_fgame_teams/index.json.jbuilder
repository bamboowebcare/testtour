json.array!(@td_fgame_teams) do |td_fgame_team|
  json.extract! td_fgame_team, :id, :user_id, :name
  json.url td_fgame_team_url(td_fgame_team, format: :json)
end
