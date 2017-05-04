json.extract! endereco, :id, :estado, :cidade, :bairro, :cep, :logradouro, :numero, :complemento, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
