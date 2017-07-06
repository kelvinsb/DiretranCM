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

Criar Admin:
admin = Usuario.new({cpf:'#cpf válido#', password: '#senha#', password_confirmation: '#senha#'})
admin.save!
