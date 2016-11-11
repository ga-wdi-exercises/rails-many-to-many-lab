class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
    @doctors = Doctor.all.map {|doctor| [doctor.name, doctor.id]}
    @patients = Patient.all.map {|patient| [patient.name, patient.id]}
  end

  def create
    Appointment.create!(appointment_params)
    redirect_to appointments_path
  end

  def edit
  end

  def update
    @appointment.update(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def destroy
    @appointment.destroy
    redirect_to doctors_path
  end


  def appointment_params
    params.require(:appointment).permit(:appt_time, :doctor, :patient)
  end
end
