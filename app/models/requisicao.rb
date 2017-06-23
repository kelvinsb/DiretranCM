class Requisicao < ApplicationRecord
  belongs_to :pessoa

  validates :pessoa_id,
  presence: true

end
