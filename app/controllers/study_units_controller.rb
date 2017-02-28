class StudyUnitsController < ApplicationController
  before_action :set_study_unit, only: [:show, :edit, :update, :destroy]

  # GET /study_units
  # GET /study_units.json
  def index
    unless params[:course_module_id].nil?
      @study_units = StudyUnit.joins(:course_modules).where("course_modules.id": params[:course_module_id])
    else
      @study_units = StudyUnit.all
    end

  end

  # GET /study_units/1
  # GET /study_units/1.json
  def show
  end

  # GET /study_units/new
  def new
    @study_unit = StudyUnit.new
  end

  # GET /study_units/1/edit
  def edit
  end

  # POST /study_units
  # POST /study_units.json
  def create
    @study_unit = StudyUnit.new(study_unit_params)

    respond_to do |format|
      if @study_unit.save
        format.html { redirect_to study_units_url, notice: 'Study unit was successfully created.' }
        format.json { render :show, status: :created, location: @study_unit }
      else
        format.html { render :new }
        format.json { render json: @study_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_units/1
  # PATCH/PUT /study_units/1.json
  def update
    respond_to do |format|
      if @study_unit.update(study_unit_params)
        format.html { redirect_to study_units_url, notice: 'Study unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_unit }
      else
        format.html { render :edit }
        format.json { render json: @study_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_units/1
  # DELETE /study_units/1.json
  def destroy
    @study_unit.destroy
    respond_to do |format|
      format.html { redirect_to study_units_url, notice: 'Study unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_unit
      @study_unit = StudyUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_unit_params
      params.require(:study_unit).permit(:description, :course_module_id)
    end
end
