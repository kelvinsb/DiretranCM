class Cid < ApplicationRecord
  belongs_to :requisicao

  validates :requisicao_id,
  presence: true

end
