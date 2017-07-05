class Pessoa < ApplicationRecord
  belongs_to :usuario
  has_one :documento
  has_one :endereco
  has_many :requisicao

  validates :nome,
	presence: {message: ": deve ser preenchido"},
	length: {maximum: 255}

	validates :rg,
	presence: {message: ": deve ser preenchido"},
	length: {minimum:8, maximum:14, message: ": deve ser preenchido com 9 digitos"}

	validates :data_nascimento,
	presence: {message: ": deve ser preenchido"}

  validates :telefone,
	#presence: {message: ": deve ser preenchido"},
	numericality: {only_integer: true}

	validates :celular,
	presence: {message: ": deve ser preenchido"},
	numericality: {only_integer: true}

  validates_format_of :email,
                      :with => /\A[\w\._%-]+@[\w\.-]+\.[a-zA-Z]{2,4}\z/,
                      :if => Proc.new { |u| !u.email.nil? && !u.email.blank? },
                      :message => "Formato de email incorreto"

	validates :usuario_id,
  presence: true,
  uniqueness: true

end
