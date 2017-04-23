class Endereco < ApplicationRecord
	belongs_to :requisicao
	has_one :estado
	has_one :cidade
	has_one :bairro
	has_one :logradouro
end
