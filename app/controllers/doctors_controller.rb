class DoctorsController < ApplicationController
  before_action :set_doctor, except: [:index, :new, :create]
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def index
    @doctors = Doctor.all
  end

  def show
    @appointments = Appointment.where(doctor_id: params[:id])
  end

  def new
    @doctor = Doctor.new
  end

  def create
    Doctor.create(doctor_params)
    redirect_to doctors_path
  end

  def edit
  end

  def update
    @doctor.update(doctor_params)
    redirect_to doctor_path(@doctor)
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :specialty)
  end
end
