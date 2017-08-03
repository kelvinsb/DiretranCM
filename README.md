# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 2.4.0

* System dependencies
      imageMagick (sudo apt-get install imagemagick -y)

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* DB drop, create e migrate (rake db:drop && rake db:create && rake db:migrate)

==========================================================================================================

Criar Admin:
rails c

admin = Usuario.new({cpf:'#cpf válido#', password: '#senha#', password_confirmation: '#senha#', admin: true, funcionario: true})
admin.save!


Trocar senha de usuario:
rails c

user = Usuario.find(id)
user.update_attribute :password, 'nova_senha'
