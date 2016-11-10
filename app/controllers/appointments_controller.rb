class AppointmentsController < ApplicationController
  before_action :set_appointment, except: [:index, :new, :create]

def new
 @appointments = Appointment.new
end

def show
end

def index
  @appointments = Appointment.all
end

def create
  Appointment.create(appointment_params)
  redirect_to appointments_path
end
end
