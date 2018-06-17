json.todos do
  json.array! @todos, :title, :text
end
