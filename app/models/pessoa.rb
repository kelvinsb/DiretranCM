class Pessoa < ApplicationRecord
	has_many :login
	#belongs_to :funcionario
	#belongs_to :requisicao

	validates :nome,
	presence: {message: ": deve ser preenchido!"},
	length: {maximum: 255, message: ": muito grande!"}

	validates :cpf,
	presence: {message: ": deve ser preenchido!"},
	length: {minimum: 11, maximum: 11, message: ": deve conter 11 caracteres"},
	numericality: {only_integer: true, message: ": não é um número"},
	uniqueness: {message: ": valor já existe"}
 	validates_cpf_format_of :cpf, message: 'inválido inserido'

	validates :rg,
	presence: {message: ": deve ser preenchido!"},
	length: {minimum: 9, maximum: 9, message: ": deve conter 9 caracteres"},
	numericality: {only_integer: true, message: ": não é um número"}

	validates :email,
	confirmation: true,
	email_format: {massege: ": email inválido"}

	validates :sexo,
	presence: {message: ": deve ser preenchido!"}

end
