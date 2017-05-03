class Endereco < ApplicationRecord
	belongs_to :requisicao
	has_one :estado
	has_one :cidade
	has_one :bairro
	has_one :logradouro

	validates :numero,
	presence: {message: ": deve ser preenchido!"},
	length: {maximum: 5},
	numericality: {only_integer: true}

	validates :complemento,
	presence: {message: ": deve ser preenchido!"},
	length: {maximum: 255}

	validates :cep,
	presence: {message: ": deve ser preenchido!"},
	length: {minimum: 8, maximum: 8},
	numericality: {only_integer: true}

#-------------------------------------------------------------------------------
#	require 'correios-cep'

# With "get" instance method
#finder = Correios::CEP::AddressFinder.new
#address = finder.get("54250610")

# With "get" class method
#address = Correios::CEP::AddressFinder.get("54250610")

#address # =>
#{
#  :address => "Rua Fernando Amorim",
#  :neighborhood => "Cavaleiro",
#  :city => "Jaboatão dos Guararapes",
#  :state => "PE",
#  :zipcode => "54250610",
#  :complement => ""
#}



end
