class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.references :doctor, foreign_key: true, on_delete: :cascade
      t.references :patient, foreign_key: true, on_delete: :cascade
      t.timestamps
    end
  end
end
