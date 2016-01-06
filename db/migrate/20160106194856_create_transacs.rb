class CreateTransacs < ActiveRecord::Migration
  def change
    create_table :transacs do |t|
      t.integer :inout
      t.decimal :amount
      t.string :title
      t.integer :account_id

      t.timestamps null: false
    end
  end
end
