json.array!(@poules) do |poule|
  json.extract! poule, :id, :name, :encrypted_password, :reset_password_token, :user_id
  json.url poule_url(poule, format: :json)
end
