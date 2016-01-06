class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :rib
      t.string :libelle
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
