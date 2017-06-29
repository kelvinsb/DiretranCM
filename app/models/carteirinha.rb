class Carteirinha < ApplicationRecord
  belongs_to :requisicao
  has_one :cid

  validates :requisicao_id,
  presence: true

end
