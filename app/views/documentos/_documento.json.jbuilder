json.extract! documento, :id, :rg, :cpf, :cid, :foto, :comp_residencia, :created_at, :updated_at
json.url documento_url(documento, format: :json)
