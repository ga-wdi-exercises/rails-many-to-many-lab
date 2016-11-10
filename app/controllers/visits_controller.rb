class VisitsController < ApplicationController
  before_action :get_visit, only: [:show, :create, :edit, :update]

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
  end

  def create
    @visit = Visit.create!(visit_params)
    redirect_to visits_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def visit_params
    params.require(:visit).permit(:doctor_id, :patient_id, :time)
  end
end
