class AppointmentsController < ApplicationController
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

 private
 def apt_params
   params.require(:appointment).permit(:date, :time, :note)
 end
end
