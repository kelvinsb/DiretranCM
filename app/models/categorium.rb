class Categorium < ApplicationRecord
	belongs_to :carteirinha

	validates :nome,
	presence: true
end
