class Cid < ApplicationRecord
	#belongs_to :carteirinha

	validates :cod_doenca,
	presence: true

    validates :nome_doenca,
    presence: true
end
