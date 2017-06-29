class Requisicao < ApplicationRecord
  belongs_to :pessoa
  has_one :Carteirinha

  validates :pessoa_id,
  presence: true

end
