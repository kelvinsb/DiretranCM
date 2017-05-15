class Cadastro < ApplicationRecord
  belongs_to :usuarios

  validates :nome,
	presence: {message: ": deve ser preenchido"},
	length: {maximum: 255}

	validates :rg,
	presence: {message: ": deve ser preenchido"},
	length: {minimum:9, maximum:9, message: ": deve ser preenchido com 9 digitos"},
	numericality: {only_integer: true, message: ": deve ser preenchido com números"}

	validates :cpf,
	presence: {message: ": deve ser preenchido"},
	length: {minimum: 11, maximum: 11, message: ": deve ser preenchido com 11 digitos"},
	numericality: {only_integer: true, message: ": deve ser preenchido com números"},
	uniqueness: true

	validates :data_nascimento,
	presence: {message: ": deve ser preenchido"}

	validates :rua,
	presence: {message: ": deve ser preenchido"},
	length: {maximum: 255, message: ": maximo de 255 digitos"}

	validates :numero,
	presence: {message: ": deve ser preenchido"},
	length: {maximum: 5, message: ": maximo de 5 digitos"},
	numericality: {only_integer: true, message: ": deve ser preenchido com números"}

	validates :complemento,
	presence: {message: ": deve ser preenchido"},
	length: {maximum: 255, message: ": maximo de 255 digitos"}

	validates :bairro,
	presence: {message: ": deve ser preenchido"},
	length: {maximum: 255, message: ": maximo de 255 digitos"}

	validates :cidade,
	presence: {message: ": deve ser preenchido"},
	length: {maximum: 50, message: ": maximo de 50 digitos"}
	
	validates :telefone,
	presence: {message: ": deve ser preenchido"}

	validates :celular,
	presence: {message: ": deve ser preenchido"}
end
