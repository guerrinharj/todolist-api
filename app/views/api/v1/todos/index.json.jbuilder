json.array! @todos do |restaurant|
  json.extract! restaurant, :id, :title, :completed
end
