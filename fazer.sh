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
rails generate scaffold Requisicao responsavel_nome:string responsavel_cpf:string data_requisicao:date data_emissao:date qtde_cart_emitidas:integer
rails generate scaffold Carteirinha via:integer status:string data_criacao:datetime data_vencimento:date 
rails generate scaffold Endereco numero:integer cep:string complemento:string
rails generate scaffold Categoria nome:string
rails generate scaffold Datalog valor_anterior:integer valor_atual:integer campo_alterado:integer
rails generate scaffold Login nome:string senha:string
rails generate scaffold Cidade nome:string
rails generate scaffold Cid cod_doenca:string nome_doenca:string
rails generate scaffold Logradouro nome:string


rails generate migration add_column_login_id_to_pessoa login_id:integer
rails generate migration add_column_email_to_pessoa email:string

rails generate migration add_column_login_id_to_funcionario login_id:integer
rails generate migration add_column_pessoa_id_to_funcionario pessoa_id:integer

rails generate migration add_column_estado_id_to_endereco estado_id:integer
rails generate migration add_column_cidade_id_to_endereco cidade_id:integer
rails generate migration add_column_logradouro_id_to_endereco logradouro_id:integer
rails generate migration add_column_bairro_id_to_endereco bairro_id:integer

rails generate migration add_column_categoria_id_to_carteirinha categoria_id:integer
rails generate migration add_column_cid_id_to_carteirinha cid_id:integer

rails generate migration add_column_log_id_to_datalog log_id:integer

rails generate migration add_requisicao_log_id_to_log requisicao_id:integer
rails generate migration add_column_pessoa_id_to_log pessoa_id:integer

rails generate migration add_column_endereco_id_to_requisicao endereco_id:integer
rails generate migration add_column_documentos_id_to_requisicao documentos_id:integer
rails generate migration add_column_pessoa_id_to_requisicao pessoa_id:integer
rails generate migration add_column_funcionario_id_to_requisicao funcionario_id:integer
rails generate migration add_column_carteirinha_id_to_requisicao carteirinha_id:integer





rake db:migrate

#rake db:schema:load

#git checkout -b create_models_3
#git add .
#git commit -m "motivo"
#git push origin create_models_3
