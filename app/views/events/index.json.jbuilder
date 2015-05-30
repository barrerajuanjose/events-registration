json.array!(@events) do |event|
  json.extract! event, :id, :name, :place, :date, :registrationPeriod, :type, :description, :logo, :coverImage, :capacity, :organizer_id
  json.url event_url(event, format: :json)
end
