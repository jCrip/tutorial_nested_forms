json.array!(@bank_subsidiaries) do |bank_subsidiary|
  json.extract! bank_subsidiary, :id, :address, :bank_id
  json.url bank_subsidiary_url(bank_subsidiary, format: :json)
end
