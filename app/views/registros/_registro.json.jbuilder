json.extract! registro, :id, :dataPrimeiroPagamento, :valorPrimeiroPagamento, :dataSegundoPagamento, :valorSegundoPagamento, :created_at, :updated_at
json.url registro_url(registro, format: :json)