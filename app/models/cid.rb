class Cid < ApplicationRecord
  belongs_to :requisicao

  validates :codigo,
  presence: {message: "código incorreto"}

  validates :nome_doenca,
  presence: {message: "deve ser preenchido"}

  validates :requisicao_id,
  presence: true

end
