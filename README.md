# README

* Objetivo geral:
	O sistema tem como objetivo emitir carteirinhas de estacionamento especial, na qual um cidadão faz uma solicitação e funcionários podem aprovar ou não, caso aprovada a carteirinha será preparada para impressão.

* Como usar (Usuario cidadão):
	Realizar o cadastro no sistema, após cadastrar o usuário deverá alimentar o sistema com as informações necessárias, em seguida será gerada uma solicitação.

* Como usar (Usuario funcionário):
	Analisar solicitações enviadas por cidadões, caso estiver de acordo o funcionário tera o poder de aprovar uma solicitação, tornando-a em uma carteirinha, caso estiver com incorreta o funcionário fará a recusa da solicitação juntamente com um motivo.

* Como usar (Usuario admin):
	Terá as mesmas funcionalidades do funcionário com o poder a mais de remover dedos.



* Versão do Ruby: 2.4.0

* Versão do Rails: 5.0.3

* Dependencias:
	PostgreSQL 
	imageMagick (sudo apt-get install imagemagick -y)


* Criação da base de dados:
	rake db:create

* Inicialização da base de dados:
	rake db:migrate

* Como inicializar:
	rails server

* Criar Admin:
	rails c
	>>admin = Usuario.new({cpf:'cpf válido', password: 'senha', password_confirmation: 'senha', admin: true, funcionario: true})
	>>admin.save!

* Criar funcionário:
	rails c
	>>funcionario = Usuario.new({cpf:'cpf válido', password: 'senha', password_confirmation: 'senha', admin: false, funcionario: true})
	>>funcionario.save!

* Trocar senha de usuario:
	rails c
	>>user = Usuario.find(id)
	>>user.update_attribute :password, 'nova_senha'


Este programa foi desenvolvido pela equipe team_diretran durante a disciplina Projeto Integrador da Universidade Tecnólogica Federal do Paraná, Campus Campo Mourão. Equipe composta por:

	Jennifer Izabel - izabeljennifer@gmail.com
	Kelvin Silva - kelvinm@alunos.utfpr.edu.br
	Matheus Guerra - guerramatheus2@gmail.com
	Rafael Alessandro - alessandro.leafar@gmail.com
