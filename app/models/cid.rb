class Cid < ApplicationRecord
  belongs_to :carteirinha

  validates :carteirinha_id,
  presence: true

end
