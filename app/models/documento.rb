class Documento < ApplicationRecord
  belongs_to :pessoa

  has_attached_file :cpf, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cpf, content_type: /\Aimage\/.*\z/

  #validates_attachment :cpf, presence: true

  has_attached_file :rg, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :rg, content_type: /\Aimage\/.*\z/

  #validates_attachment :rg, presence: true

  has_attached_file :foto, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/

  #validates_attachment :foto, presence: true


  has_attached_file :cid, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cid, content_type: /\Aimage\/.*\z/

  #validates_attachment :cid, presence: true

  has_attached_file :comp_residencia, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :comp_residencia, content_type: /\Aimage\/.*\z/

  #validates_attachment :comp_residencia, presence: true
  #content_type: { content_type: "image/jpeg" },
  #size: { in: 0..10.kilobytes }


  validates :pessoa_id,
  presence: true

end
