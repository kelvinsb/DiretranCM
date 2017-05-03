class Estado < ApplicationRecord
	belongs_to :endereco

	validates :nome,
	presence: {message: ": deve ser preenchido!"},
	length: {maximum: 20}

	validates :uf,
	presence: {message: ": deve ser preenchido!"},
	length: {minimum: 2, maximum: 2}

end
