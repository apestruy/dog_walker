class CreateWalkers < ActiveRecord::Migration[6.0]
  def change
    create_table :walkers do |t|
      t.string :name
      t.integer :age
      t.integer :rating

      t.timestamps
    end
  end
end
