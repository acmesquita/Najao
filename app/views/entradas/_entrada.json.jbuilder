json.extract! entrada, :id, :data, :valor, :descricao, :created_at, :updated_at
json.url entrada_url(entrada, format: :json)