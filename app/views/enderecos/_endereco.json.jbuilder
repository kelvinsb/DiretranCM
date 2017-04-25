json.extract! endereco, :id, :numero, :cep, :complemento, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
