class AppointmentsController < ApplicationController
  before_action :get_appointment, only: [:show, :edit, :update, :destroy]

  def get_appointment
    @appointment = Appointment.find(params[:id])
  end

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
    docs = Doctor.all
    pats = Patient.all
    @docarray = docs.map { |doc| [doc.name, doc.id] }
    @patarray = pats.map { |pat| [pat.name, pat.id]}
  end

  def create
    Appointment.create!(appointment_params)
    redirect_to appointments_path
  end

  def edit
  docs = Doctor.all
  pats = Patient.all
  @docarray = docs.map { |doc| [doc.name, doc.id] }
  @patarray = pats.map { |pat| [pat.name, pat.id]}
  end

  def update
  @appointment.update!(appointment_params)
  redirect_to appointments_path
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:doctor_id, :patient_id, :time)
  end
end
