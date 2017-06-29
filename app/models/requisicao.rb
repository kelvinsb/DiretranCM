class Requisicao < ApplicationRecord
  belongs_to :pessoa
  has_one :carteirinha
  has_one :cid

  validates :pessoa_id,
  presence: true

end
