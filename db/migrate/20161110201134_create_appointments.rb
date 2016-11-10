class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor
      t.belongs_to :patient
      t.string :date
      t.string :time
      t.string :note
      t.timestamps
    end
  end
end
