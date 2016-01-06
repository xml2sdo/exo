class Transac < ActiveRecord::Base
	belongs_to :account
	validates :title, presence: { with: true, message: ": veuillez saisir un intitulé"}
	validates :account, presence: { with: true, message: ": veuillez associer un compte à cette transaction "}
	validates :amount, presence: { with: true, message: ": veuillez indiquer un montant"}
	validates :inout, presence: { with: true, message: ": veuillez préciser 'entrante' ou 'sortante'"}
	enum inout: [:entrante , :sortante]
end
