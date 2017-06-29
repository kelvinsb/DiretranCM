class Usuario < ApplicationRecord
	#belongs_to :endereco, optional: true
	#belongs_to :pessoa, optional: true
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable

  def email_required?
    false
  end

  def email_changed?
    false
  end

  validates :cpf,
  presence: {message: ": deve ser preenchido"},
  length: {minimum: 11, maximum: 11, message: ": deve ser preenchido com 11 digitos"},
  numericality: {only_integer: true, message: ": deve ser preenchido com números"}
  #uniqueness: true
  validates_cpf_format_of :cpf, message: 'invalido'

end