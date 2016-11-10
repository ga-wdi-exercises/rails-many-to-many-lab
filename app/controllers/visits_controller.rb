class VisitsController < ApplicationController
  before_action :get_visit, only: [:show, :edit, :update, :destroy]

  def get_visit
    @visit = Visit.find(params[:id])
  end

  def index
    @visits = Visit.all
  end

  def show
  end

  def new
    @visit = Visit.new
    @docs = Doctor.all.map{|d| [d.name, d.id]}
    @pats = Patient.all.map{|p| [p.name, p.id]}
  end

  def create
    Visit.create!(visit_params)
    # render plain: params.inspect
    redirect_to visits_path
  end

  def edit
    @docs = Doctor.all.map{|d| [d.name, d.id]}
    @pats = Patient.all.map{|p| [p.name, p.id]}
  end

  def update
    @visit.update(visit_params)
    redirect_to visit_path
  end

  def destroy
    @visit.destroy

    redirect_to visits_path
  end

private
  def visit_params
    params.require(:visit).permit(:doctor_id, :patient_id, :time)
  end
end
