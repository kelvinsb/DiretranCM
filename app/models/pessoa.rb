class Pessoa < ApplicationRecord
	has_many :login
	#belongs_to :funcionario
	#belongs_to :requisicao

	validates :nome,
	presence: {message: ": deve ser preenchido!"},
	length: {maximum: 255}

	validates :cpf,
	presence: {message: ": deve ser preenchido!"},
	length: {minimum: 11, maximum: 11},
	numericality: {only_integer: true},
	uniqueness: true
 	validates_cpf_format_of :cpf, message: 'inválido inserido'

	validates :rg, presence: {message: ": deve ser preenchido!"},
	length: {minimum: 9, maximum: 9},
	numericality: {only_integer: true}

end
