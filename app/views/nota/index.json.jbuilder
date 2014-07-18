json.array!(@nota) do |notum|
  json.extract! notum, :id, :portugues, :matematica, :historia, :biologia
  json.url notum_url(notum, format: :json)
end
