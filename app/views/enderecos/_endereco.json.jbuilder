json.extract! endereco, :id, :cep, :cidade, :bairro, :logradouro, :numero, :complemento, :pessoa_id, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
