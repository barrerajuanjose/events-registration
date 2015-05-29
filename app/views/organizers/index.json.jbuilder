json.array!(@organizers) do |organizer|
  json.extract! organizer, :id, :email, :pass, :name
  json.url organizer_url(organizer, format: :json)
end
