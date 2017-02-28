class CourseModuleStudyUnitsController < ApplicationController
  before_action :set_course_module_study_unit, only: [:show, :edit, :update, :destroy]

  # GET /course_module_study_units
  # GET /course_module_study_units.json
  def index
    @course_module_study_units = CourseModuleStudyUnit.all
  end

  # GET /course_module_study_units/1
  # GET /course_module_study_units/1.json
  def show
  end

  # GET /course_module_study_units/new
  def new
    @course_module_study_unit = CourseModuleStudyUnit.new
  end

  # GET /course_module_study_units/1/edit
  def edit
  end

  # POST /course_module_study_units
  # POST /course_module_study_units.json
  def create
    @course_module_study_unit = CourseModuleStudyUnit.new(course_module_study_unit_params)

    respond_to do |format|
      if @course_module_study_unit.save
        format.html { redirect_to course_module_study_units_url, notice: 'Course module study unit was successfully created.' }
        format.json { render :show, status: :created, location: @course_module_study_unit }
      else
        format.html { render :new }
        format.json { render json: @course_module_study_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_module_study_units/1
  # PATCH/PUT /course_module_study_units/1.json
  def update
    respond_to do |format|
      if @course_module_study_unit.update(course_module_study_unit_params)
        format.html { redirect_to course_module_study_units_url, notice: 'Course module study unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_module_study_unit }
      else
        format.html { render :edit }
        format.json { render json: @course_module_study_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_module_study_units/1
  # DELETE /course_module_study_units/1.json
  def destroy
    @course_module_study_unit.destroy
    respond_to do |format|
      format.html { redirect_to course_module_study_units_url, notice: 'Course module study unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_module_study_unit
      @course_module_study_unit = CourseModuleStudyUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_module_study_unit_params
      params.require(:course_module_study_unit).permit(:course_module_id, :study_unit_id)
    end
end
