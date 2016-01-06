class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nom
      t.string :prenom
      t.boolean :sexe
      t.string :adresse

      t.timestamps null: false
    end
  end
end
