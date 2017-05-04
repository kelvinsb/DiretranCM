class Endereco < ApplicationRecord
  belongs_to :requisicao

  validates :estado,
	presence: {message: ": deve ser preenchido!"},
	length: {maximum: 50}

  validates :cidade,
  presence: {message: ": deve ser preenchido!"},
  length: {maximum: 50}

  validates :bairro,
  presence: {message: ": deve ser preenchido!"},
  length: {maximum: 255}

  validates :logradouro,
	presence: {message: ": deve ser preenchido!"},
	length: {maximum: 255}

	validates :numero,
	presence: {message: ": deve ser preenchido!"},
	length: {maximum: 5, message: ": deve conter até 5 caracteres"},
	numericality: {only_integer: true, message: ": não é um número"}

	validates :complemento,
	presence: {message: ": deve ser preenchido!"},
	length: {maximum: 255}

	validates :cep,
	presence: {message: ": deve ser preenchido!"},
	length: {minimum: 8, maximum: 8, message: ": deve conter 8 caracteres"},
	numericality: {only_integer: true, message: ": não é um número"}


end
