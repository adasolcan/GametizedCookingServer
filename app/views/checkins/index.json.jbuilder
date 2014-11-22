json.array!(@checkins) do |checkin|
  json.extract! checkin, :id, :description, :date_time, :picture, :user_id, :recipe_id
  json.url checkin_url(checkin, format: :json)
end
