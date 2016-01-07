class User < ActiveRecord::Base
	has_many :accounts

	validates :login, presence: { with: true, message: ": veuillez saisir un login"}
	validates :pwd, presence: { with: true, message: ": veuillez saisir un mot de passe"}
	validates :sexe, inclusion: { in: ["M", "F", nil], message: "(%{value}): veuillez préciser 'M' ou 'F'"}
	enum sexe: [:"M" , :"F"]

end
