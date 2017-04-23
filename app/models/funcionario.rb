class Funcionario < ApplicationRecord
	has_one :login
	has_many :pessoa
end
