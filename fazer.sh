#!/bin/bash
rake db:drop
rake db:create

rails generate scaffold Estado nome:string uf:string
rails generate scaffold Funcionario
rails generate scaffold Bairro nome:string
rails generate scaffold Documentos rg:string cpf:string cid:string foto:string comp_residencia:string
rails generate scaffold Categoria nome:string
rails generate scaffold Log motivo:string data:date hora:time
rails generate scaffold Pessoa cpf:string nome:string rg:string
rails generate scaffold Requisicao responsavel_nome:string responsavel_cpf:string data_requisicao:date data_emissao:date
rails generate scaffold Carteirinha via:integer status:string data_criacao:datetime data_vencimento:date
rails generate scaffold Endereco numero:integer cep:string complemento:string
rails generate scaffold Categoria nome:string
rails generate scaffold Datalog valor_anterior:integer valor_atual:integer campo_alterado:integer
rails generate scaffold Login nome:string senha:string
rails generate scaffold Cidade nome:string
rails generate scaffold Cid cod_doenca:string nome_doenca:string

rake db:migrate

#rake db:schema:load

#git checkout -b create_models_3
#git add .
#git commit -m "motivo"
#git push origin create_models_3
