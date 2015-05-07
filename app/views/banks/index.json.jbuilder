json.array!(@banks) do |bank|
  json.extract! bank, :id, :name
  json.url bank_url(bank, format: :json)
end
