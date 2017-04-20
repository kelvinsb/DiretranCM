#!/bin/bash
#rake db:drop
#rake db:create
#rake db:migrate
#rails generate scaffold Estado nome:string uf:string
#rake db:migrate
#git add .
#git commit -m "Criação model: Estado"
#git push origin create_models_3

#rails generate scaffold Funcionario
#git add .
#git commit -m "Criação model: Funcionario"
#git push origin create_models_3

rails generate scaffold Bairro nome:string
git add .
git commit -m "Criação model: Bairro"
git push origin create_models_3

#rails generate scaffold Documentos rg:string cpf:string cid:string foto:string comp_residencia:string
#git add .
#git commit -m "Criação model: Documentos"
#git push origin create_models_3

#rails generate scaffold Categoria nome:string
#git add .
#git commit -m "Criação model: Categoria"
#git push origin create_models_3

#rake db:schema:load
#rake db:migrate

#git checkout -b create_models_3
#git add .
#git commit -m "motivo"
#git push origin create_models_3
