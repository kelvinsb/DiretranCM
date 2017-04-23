class Carteirinha < ApplicationRecord
	belongs_to :requisicao
	has_many :cid
	has_many :categorium
end
