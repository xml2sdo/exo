json.array!(@transacs) do |transac|
  json.extract! transac, :id, :inout, :amount, :amount, :title, :account_id
  json.url transac_url(transac, format: :json)
end
