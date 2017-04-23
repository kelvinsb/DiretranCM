class Pessoa < ApplicationRecord
	has_many :login
	belongs_to :funcionario
	belongs_to :requisicao
end
