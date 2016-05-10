json.array!(@styles) do |style|
  json.id style.id
  json.name style.name
  json.category style.category
end
