class AppointmentsController < ApplicationController
  before_action :set_appointment, except: [:index, :new, :create]
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    Appointment.create(appointment_params)
    redirect_to appointments_path
  end

  def edit
  end

  def update
    @appointment.update(appointment_params)
    redirect_to appointments_path
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_path
  end

  private
  def appointment_params
    params.require(:appointment).permit(:patient_id, :doctor_id, :appointment_time)
  end
end
