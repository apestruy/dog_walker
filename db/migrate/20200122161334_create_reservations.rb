class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :walker, null: false, foreign_key: true
      t.belongs_to :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
