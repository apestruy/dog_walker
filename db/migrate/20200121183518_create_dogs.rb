class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :breed

      t.timestamps
    end
  end
end
