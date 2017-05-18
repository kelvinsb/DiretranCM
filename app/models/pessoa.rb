class Pessoa < ApplicationRecord
  belongs_to :usuario

   	validates :nome,
	presence: {message: ": deve ser preenchido"},
	length: {maximum: 255}

	validates :rg,
	presence: {message: ": deve ser preenchido"},
	length: {minimum:9, maximum:9, message: ": deve ser preenchido com 9 digitos"}	

	validates :cpf,
	presence: {message: ": deve ser preenchido"},
	length: {minimum: 11, maximum: 11, message: ": deve ser preenchido com 11 digitos"},
	numericality: {only_integer: true, message: ": deve ser preenchido com números"}
	#uniqueness: true
	validates_cpf_format_of :cpf, message: 'invalido'

	validates :data_nascimento,
	presence: {message: ": deve ser preenchido"}

  	validates :telefone,
	presence: {message: ": deve ser preenchido"},
	numericality: {only_integer: true, message: ": deve ser preenchido com números"}

	validates :celular,
	presence: {message: ": deve ser preenchido"},
	numericality: {only_integer: true, message: ": deve ser preenchido com números"}

	validates :usuario_id,
  	uniqueness: true

end
