json.extract! info_carteirinha, :id, :nome_tipo_estacionamento, :resolucao, :uf, :municipio, :orgao_expedidor, :nome_diretor, :orgao_exp_diretor, :regras_utilizacao, :created_at, :updated_at, :numeracao_carteirinha
json.url info_carteirinha_url(info_carteirinha, format: :json)
