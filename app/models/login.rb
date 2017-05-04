class Login < ApplicationRecord
	#belongs_to: funcionario
	#belongs_to: pessoa

	validates :nome,
	presence: {message: ": deve ser preenchido!"},
	uniqueness: {message: ": valor já existe"},
  	length: {minimum: 5, message: ": deve conter no mínimo 5 caracteres", maximum: 50 , message: ": deve conter no máximo 50 caracteres"}
  	#exclusion: { in: %w(admin), message: "%{value} é um usuário reservado"}

 	validates :senha,
 	presence: {message: ": deve ser preenchido!"},
 	length: {minimum: 8, message: ": deve conter no mínimo 8 caracteres"}

   	#has_secure_password

end
