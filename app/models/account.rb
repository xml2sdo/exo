class Account < ActiveRecord::Base
	belongs_to :user
	validates :rib, format: { with: /[0-9]{16,16}/ , message: "Un compte doit avoir un identifiant composé de 16 chiffres"}
	validates :rib, uniqueness: { with: true, message: ": ce numéro de compte existe déjà (l'identifiant doit être unique)"}
	validates :rib, presence: { with: true, message: ": veuillez saisir un numéro de compte"}
	validates :libelle, presence: { with: true, message: ": veuillez saisir un intitulé"}
	validates :user, presence: { with: true, message: ": veuillez associer un utilisateur à ce compte"}
end
