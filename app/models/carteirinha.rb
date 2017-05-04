class Carteirinha < ApplicationRecord
	belongs_to :requisicao
	has_many :cid
	has_many :categorium

	validates :via,
	presence: {message: ": deve ser preenchido!"}

  validates :status,
  presence: {message: ": deve ser preenchido!"}

  validates :categoria_id,
  presence: {message: ": deve ser preenchido!"}

  validates :cid_id,
  presence: {message: ": deve ser preenchido!"}

end
