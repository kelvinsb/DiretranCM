class Requisicao < ApplicationRecord
	has_one :funcionario	
	has_one :endereco
	has_one :pessoa
	has_one :documentos
	has_one :carteirinha

end
