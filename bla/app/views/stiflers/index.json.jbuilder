json.array!(@stiflers) do |stifler|
  json.extract! stifler, :id, :nome, :cor, :numero
  json.url stifler_url(stifler, format: :json)
end
