class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.references :user, null: false, foreign_key: true
      t.references :request, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
