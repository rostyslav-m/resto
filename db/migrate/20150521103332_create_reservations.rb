class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :person
      t.datetime :starttime
      t.datetime :endtime
      t.references :table, index: true

      t.timestamps null: false
    end
    add_foreign_key :reservations, :tables
  end
end
