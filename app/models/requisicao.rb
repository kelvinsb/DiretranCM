class Requisicao < ApplicationRecord
	has_one :funcionario
	has_one :endereco
	has_one :pessoa
	has_one :documentos
	has_one :carteirinha

	validates :responsavel_nome,
	presence: {message: ": deve ser preenchido!"},
	length: {minimum: 5, message: ": deve conter no mínimo 5 caracteres", maximum: 50, message: ": deve conter no máximo 50 caracteres" }

	validates :responsavel_cpf,
	presence: {message: ": deve ser preenchido!"},
	length: {minimum: 11, maximum: 11, message: ": deve conter 11 caracteres"},
	numericality: {only_integer: true, message: ": não é um número"},
	uniqueness: {message: ": valor já existe"}
 	validates_cpf_format_of :responsavel_cpf, message: 'inválido'

 	validates :endereco_id,
 	presence: true

 	validates :documentos_id,
 	presence: true

    validates :pessoa_id,
    presence: true

    validates :funcionario_id,
    presence: true

    validates :carteirinha_id,
    presence: false

end
