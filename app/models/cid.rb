class Cid < ApplicationRecord
	#belongs_to :carteirinha

	validates :cod_doenca,
	presence: {message: ": deve ser preenchido!"},
	length: {minimum: 2, maximum: 5}

  validates :nome_doenca,
  presence: {message: ": deve ser preenchido!"},
	length: {maximum: 255}
	
end
