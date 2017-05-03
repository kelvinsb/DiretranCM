class Bairro < ApplicationRecord
	belongs_to :endereco

	validates :nome,
	presence: {message: ": deve ser preenchido!"},
	length: {maximum: 255}

end
