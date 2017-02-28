class GeneratingThemesController < ApplicationController
  before_action :set_generating_theme, only: [:show, :edit, :update, :destroy]

  # GET /generating_themes
  # GET /generating_themes.json
  def index
    @generating_themes = GeneratingTheme.where("teacher_id is null")
  end

  # GET /generating_themes/1
  # GET /generating_themes/1.json
  def show
  end

  # GET /generating_themes/new
  def new
    @generating_theme = GeneratingTheme.new
  end

  # GET /generating_themes/1/edit
  def edit
  end

  # POST /generating_themes
  # POST /generating_themes.json
  def create
    @generating_theme = GeneratingTheme.new(generating_theme_params)
    @generating_theme.teacher_id = @teacher_id

    respond_to do |format|
      if @generating_theme.save
        format.html { redirect_to generating_themes_url, notice: 'Generating theme was successfully created.' }
        format.json { render :show, status: :created, location: @generating_theme }
        format.js
      else
        format.html { render :new }
        format.json { render json: @generating_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generating_themes/1
  # PATCH/PUT /generating_themes/1.json
  def update
    respond_to do |format|
      if @generating_theme.update(generating_theme_params)
        format.html { redirect_to generating_themes_url, notice: 'Generating theme was successfully updated.' }
        format.json { render :show, status: :ok, location: @generating_theme }
      else
        format.html { render :edit }
        format.json { render json: @generating_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generating_themes/1
  # DELETE /generating_themes/1.json
  def destroy
    @generating_theme.destroy
    respond_to do |format|
      format.html { redirect_to generating_themes_url, notice: 'Generating theme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generating_theme
      @generating_theme = GeneratingTheme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generating_theme_params
      params.require(:generating_theme).permit(:description, :long_description)
    end

end
