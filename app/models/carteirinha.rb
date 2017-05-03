class Carteirinha < ApplicationRecord
	belongs_to :requisicao
	has_many :cid
	has_many :categorium

	validates :via,
	presence: true

    validates :status,
    presence: true

    validates :categoria_id,
    presence: true

    validates :cid_id,
    presence: true

end
