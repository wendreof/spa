class PlaneClassroomsController < ApplicationController
  before_action :set_plane_classroom, only: [:show, :edit, :update, :destroy]
  before_action :set_teacher, only: [:new, :edit, :create, :index]

  # GET /plane_classrooms
  # GET /plane_classrooms.json
  def index
    @plane_classrooms = PlaneClassroom.where(teacher_id: @teacher.id)
  end

  # GET /plane_classrooms/1
  # GET /plane_classrooms/1.json
  def show
  end

  # GET /plane_classrooms/new
  def new
    @plane_classroom = PlaneClassroom.new
    @course_modules = {}
  end

  # GET /plane_classrooms/1/edit
  def edit
    @course_modules = @plane_classroom.course.course_modules
  end

  # POST /plane_classrooms
  # POST /plane_classrooms.json
  def create
    @plane_classroom = PlaneClassroom.new(plane_classroom_params)

    respond_to do |format|
      if @plane_classroom.save
        format.html { redirect_to "/plane_classrooms/#{@plane_classroom.id}/edit?active=meetings", notice: 'O plano de aula foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @plane_classroom }
      else
        format.html { render :new }
        format.json { render json: @plane_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plane_classrooms/1
  # PATCH/PUT /plane_classrooms/1.json
  def update
    respond_to do |format|
      if @plane_classroom.update(plane_classroom_params)
        format.html { redirect_to plane_classrooms_url, notice: 'O plano de aula foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @plane_classroom }
      else
        format.html { render :edit }
        format.json { render json: @plane_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plane_classrooms/1
  # DELETE /plane_classrooms/1.json
  def destroy
    @plane_classroom.destroy
    respond_to do |format|
      format.html { redirect_to plane_classrooms_url, notice: 'O plano de aula foi removido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plane_classroom
      @plane_classroom = PlaneClassroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plane_classroom_params
      params.require(:plane_classroom).permit(:teacher_id, :year, :semester, :course_id, :course_module_id, :study_unit_id, :workload, :menu, :interdisciplinary_project, :basic_bibliography, :additional_bibliography)
    end

    def set_teacher
      @teacher = Teacher.where(email: current_user.email).first
    end


end
