class Login < ApplicationRecord
	#belongs_to: funcionario
	#belongs_to: pessoa

	validates :nome,
	presence: true,
	uniqueness: true,
  	length: { minimum: 5, maximum: 50 }
  	#exclusion: { in: %w(admin), message: "%{value} é um usuário reservado"}

 	validates :senha,
 	presence: true,
 	length: {minimum: 8}
 	
   	#has_secure_password

end
