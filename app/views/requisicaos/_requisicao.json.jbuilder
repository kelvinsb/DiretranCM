json.extract! requisicao, :id, :responsavel_nome, :responsavel_cpf, :data_requisicao, :data_emissao, :created_at, :updated_at
json.url requisicao_url(requisicao, format: :json)
