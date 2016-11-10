class AddAppointmentTimeToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :appointment_time, :datetime
  end
end
