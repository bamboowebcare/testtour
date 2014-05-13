json.array!(@riders) do |rider|
  json.extract! rider, :id, :name, :birthday, :country, :tdf, :allround, :climber, :sprinter, :classic, :yellow, :green, :white, :polka, :cycling_teams_id
  json.url rider_url(rider, format: :json)
end
