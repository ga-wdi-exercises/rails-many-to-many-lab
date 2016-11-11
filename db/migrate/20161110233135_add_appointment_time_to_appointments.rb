class AddAppointmentTimeToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :appointments_time, :datetime
  end
end
