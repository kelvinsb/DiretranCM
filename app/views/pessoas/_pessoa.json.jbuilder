json.extract! pessoa, :id, :cpf, :nome, :rg, :login_id, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
