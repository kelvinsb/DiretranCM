json.extract! requisicao, :id, :data_requisicao, :data_emissao, :qtde_carteirinhas, :responsavel_nome, :responsavel_cpf, :created_at, :updated_at
json.url requisicao_url(requisicao, format: :json)
