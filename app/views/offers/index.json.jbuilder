json.array!(@offers) do |offer|
  json.extract! offer, :id, :book_name, :old_price, :new_price
  json.url offer_url(offer, format: :json)
end
