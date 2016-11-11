class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
    @doctors = Doctor.all.map do |doc|
      [doc.name, doc.id]
    end
    @patients = Patient.all.map do |person|
      [person.name, person.id]
    end
  end

  def create
    appointment = Appointment.new(apt_params)
    appointment.doctor_id = params[:doctor_id]
    appointment.patient_id = params[:patient_id]
    appointment.update(apt_params)
    redirect_to "/doctors"
  end

  def edit
    @appointment = Appointment.find(params[:id])
    @patient = @appointment.patient.name
    @doctors = Doctor.all.map do |doc|
      [doc.name, doc.id]
    end
  end

  def update
    appointment = Appointment.find(params[:id])
    appointment.doctor_id = params[:doctor_id]
    appointment.update(apt_params)
    redirect_to "/patients"
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy

    redirect_to "/doctors"
  end

  private
  def apt_params
    params.require(:appointment).permit(:date, :time, :notes, :doctor_id)
  end

end
