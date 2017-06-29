class Carteirinha < ApplicationRecord
  belongs_to :requisicao
  #has_one :cid, optional: true

  validates :requisicao_id,
  presence: true

end
