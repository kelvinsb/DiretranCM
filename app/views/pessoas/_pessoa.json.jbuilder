json.extract! pessoa, :id, :nome, :rg, :cpf, :data_nascimento, :telefone, :celular, :usuario_id, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
