class TeacherGeneratingThemesController < ApplicationController
  before_action :set_teacher_generating_theme, only: [:show, :edit, :update, :destroy]

  # GET /teacher_generating_themes
  # GET /teacher_generating_themes.json
  def index
    @teacher_generating_themes = GeneratingTheme.where('teacher_id = ? or teacher_id is null', Teacher.where(email: current_user.email).first.id)
  end

  # GET /teacher_generating_themes/1
  # GET /teacher_generating_themes/1.json
  def show
  end

  # GET /teacher_generating_themes/new
  def new
    @teacher_generating_theme = GeneratingTheme.new
  end

  # GET /teacher_generating_themes/1/edit
  def edit
  end

  # POST /teacher_generating_themes
  # POST /teacher_generating_themes.json
  def create
    @teacher_generating_theme = GeneratingTheme.new(teacher_generating_theme_params)
    @teacher_generating_theme.teacher_id = Teacher.where(email: current_user.email).first.id

    respond_to do |format|
      if @teacher_generating_theme.save
        format.html { redirect_to @teacher_generating_theme, notice: 'Teacher generating theme was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_generating_theme }
        format.js
      else
        format.html { render :new }
        format.json { render json: @teacher_generating_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_generating_themes/1
  # PATCH/PUT /teacher_generating_themes/1.json
  def update
    respond_to do |format|
      if @teacher_generating_theme.update(teacher_generating_theme_params)
        format.html { redirect_to @teacher_generating_theme, notice: 'Teacher generating theme was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_generating_theme }
      else
        format.html { render :edit }
        format.json { render json: @teacher_generating_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_generating_themes/1
  # DELETE /teacher_generating_themes/1.json
  def destroy
    @teacher_generating_theme.destroy
    respond_to do |format|
      format.html { redirect_to teacher_generating_themes_url, notice: 'Teacher generating theme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_generating_theme
      @teacher_generating_theme = GeneratingTheme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_generating_theme_params
      #params.fetch(:teacher_generating_theme, {})
      params.require(:generating_theme).permit(:description)
    end



end
