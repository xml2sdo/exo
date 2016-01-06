json.array!(@accounts) do |account|
  json.extract! account, :id, :rib, :libelle, :user_id
  json.url account_url(account, format: :json)
end
