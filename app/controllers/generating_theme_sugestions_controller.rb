class GeneratingThemeSugestionsController < ApplicationController
  before_action :set_generating_theme_sugestion, only: [:show, :edit, :update, :destroy]

  # GET /generating_theme_sugestions
  # GET /generating_theme_sugestions.json
  def index
    @generating_theme_sugestions = GeneratingThemeSugestion.all
  end

  # GET /generating_theme_sugestions/1
  # GET /generating_theme_sugestions/1.json
  def show
  end

  # GET /generating_theme_sugestions/new
  def new
    @generating_theme_sugestion = GeneratingThemeSugestion.new
  end

  # GET /generating_theme_sugestions/1/edit
  def edit
  end

  # POST /generating_theme_sugestions
  # POST /generating_theme_sugestions.json
  def create
    @generating_theme_sugestion = GeneratingThemeSugestion.new(generating_theme_sugestion_params)

    respond_to do |format|
      if @generating_theme_sugestion.save
        format.html { redirect_to @generating_theme_sugestion, notice: 'Generating theme sugestion was successfully created.' }
        format.json { render :show, status: :created, location: @generating_theme_sugestion }
      else
        format.html { render :new }
        format.json { render json: @generating_theme_sugestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generating_theme_sugestions/1
  # PATCH/PUT /generating_theme_sugestions/1.json
  def update
    respond_to do |format|
      if @generating_theme_sugestion.update(generating_theme_sugestion_params)
        format.html { redirect_to @generating_theme_sugestion, notice: 'Generating theme sugestion was successfully updated.' }
        format.json { render :show, status: :ok, location: @generating_theme_sugestion }
      else
        format.html { render :edit }
        format.json { render json: @generating_theme_sugestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generating_theme_sugestions/1
  # DELETE /generating_theme_sugestions/1.json
  def destroy
    @generating_theme_sugestion.destroy
    respond_to do |format|
      format.html { redirect_to generating_theme_sugestions_url, notice: 'Generating theme sugestion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generating_theme_sugestion
      @generating_theme_sugestion = GeneratingThemeSugestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generating_theme_sugestion_params
      params.require(:generating_theme_sugestion).permit(:description, :long_description)
    end
end
