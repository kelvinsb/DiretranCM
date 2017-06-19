class Documento < ApplicationRecord
  belongs_to :pessoa

  validates :pessoa_id
  presence: true 

  has_attached_file :cpf, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cpf, content_type: /\Aimage\/.*\z/

  has_attached_file :rg, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :rg, content_type: /\Aimage\/.*\z/

  has_attached_file :foto, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/

  has_attached_file :cid, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cid, content_type: /\Aimage\/.*\z/

  has_attached_file :comp_residencia, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :comp_residencia, content_type: /\Aimage\/.*\z/

end
