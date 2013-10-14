json.array!(@addresses) do |address|
  json.extract! address, :fName, :lName, :email, :zip, :color
  json.url address_url(address, format: :json)
end
