class PatientsController < ApplicationController
  before_action :set_patient, except: [:index, :new, :create]
  def index
    @patients = Patient.all
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def show
    @appointments = Appointment.where(patient_id: params[:id])

  end

  def new
    @patient = Patient.new
  end

  def create
    Patient.create(patient_params)
    redirect_to patients_path
  end

  def edit
  end

  def update
    @patient.update(patient_params)
    redirect_to patient_path(@patient)
  end

  def destroy
    @patient.destroy
    redirect_to patients_path
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :age, :gender)
  end
end
