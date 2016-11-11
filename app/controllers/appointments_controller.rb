class AppointmentsController < ApplicationController

  def index
    @appointment = Appointment.all
end

  def new
    @appointment = Appointment.new
end


  def create
    Appointment.create(appointment_params)
    redirect_to appointments_path
end


  def edit
    @appointment = Appointment.find(params[:id])
  end
  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    redirect_to appointments_path
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_path
  end


end
