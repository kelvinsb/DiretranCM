json.extract! cadastro, :id, :nome, :rg, :cpf, :data_nascimento, :rua, :numero, :complemento, :bairro, :cidade, :telefone, :celular, :usuarios_id, :created_at, :updated_at
json.url cadastro_url(cadastro, format: :json)
