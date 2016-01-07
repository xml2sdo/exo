class ChangeSexeTypeInUser < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.change :sexe,  :integer
  	end
  end
end
