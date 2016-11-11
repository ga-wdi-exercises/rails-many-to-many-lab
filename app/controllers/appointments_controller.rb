class AppointmentsController < ApplicationController


def index
  @doctors = Doctor.all
  @appointments = Appointment.all
end

def new
  @appointment = Appointment.new
  @doctors = Doctor.all.map

end

def create
  @appt = Appointment.create(appt_params)
  @appt.save
  redirect_to appointments_path
end


private

def appt_params
  params.require(:appointment).permit(:datetime, :doctor_id, :patient_id)
end

end
