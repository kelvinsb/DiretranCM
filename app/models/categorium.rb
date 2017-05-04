class Categorium < ApplicationRecord
	belongs_to :carteirinha

	validates :nome,
	presence: {message: ": deve ser preenchido!"},
	length: {maximum: 50}

end
