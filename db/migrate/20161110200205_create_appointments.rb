class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.string :time
      t.string :location
      t.references :patient, foreign_key: true
      t.references :doctor, foreign_key: true
    end
  end
end
