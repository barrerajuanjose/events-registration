json.array!(@organizers) do |organizer|
  json.extract! organizer, :id, :email, :pass, :name, :phone
  json.url organizer_url(organizer, format: :json)
end
