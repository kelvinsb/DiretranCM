class Requisicao < ApplicationRecord
	has_one :funcionario	
	has_one :endereco
	has_one :pessoa
	has_one :documentos
	has_one :carteirinha

	validates :responsavel_nome,
	presence: true,
	length: { minimum: 5, maximum: 50 }

	validates :responsavel_cpf,
	presence: {message: ": deve ser preenchido!"},
	length: {minimum: 11, maximum: 11},
	numericality: {only_integer: true},
	uniqueness: true
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
