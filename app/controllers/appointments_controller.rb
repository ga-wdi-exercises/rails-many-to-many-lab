class AppointmentsController < ApplicationController
  before_action :set_appointment, except: [:index, :new, :create]

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
    @appointment = Appointment.new
    @docs = Doctor.all.map { |doc| [doc.name, doc.id] }
    @pats = Patient.all.map { |pat| [pat.name, pat.id] }
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

  private

  def appointment_params
    params.require(:appointment).permit(:doctor_id, :patient_id, :name, :date, :time)
  end
end
