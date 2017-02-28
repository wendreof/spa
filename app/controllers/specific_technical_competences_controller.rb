class SpecificTechnicalCompetencesController < ApplicationController
  before_action :set_specific_technical_competence, only: [:show, :edit, :update, :destroy]

  # GET /specific_technical_competences
  # GET /specific_technical_competences.json
  def index
    @specific_technical_competences = SpecificTechnicalCompetence.all
  end

  # GET /specific_technical_competences/1
  # GET /specific_technical_competences/1.json
  def show
  end

  # GET /specific_technical_competences/new
  def new
    @specific_technical_competence = SpecificTechnicalCompetence.new
  end

  # GET /specific_technical_competences/1/edit
  def edit
  end

  # POST /specific_technical_competences
  # POST /specific_technical_competences.json
  def create
    @specific_technical_competence = SpecificTechnicalCompetence.new(specific_technical_competence_params)

    respond_to do |format|
      if @specific_technical_competence.save
        format.html { redirect_to @specific_technical_competence, notice: 'Specific technical competence was successfully created.' }
        format.json { render :show, status: :created, location: @specific_technical_competence }
      else
        format.html { render :new }
        format.json { render json: @specific_technical_competence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specific_technical_competences/1
  # PATCH/PUT /specific_technical_competences/1.json
  def update
    respond_to do |format|
      if @specific_technical_competence.update(specific_technical_competence_params)
        format.html { redirect_to @specific_technical_competence, notice: 'Specific technical competence was successfully updated.' }
        format.json { render :show, status: :ok, location: @specific_technical_competence }
      else
        format.html { render :edit }
        format.json { render json: @specific_technical_competence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specific_technical_competences/1
  # DELETE /specific_technical_competences/1.json
  def destroy
    @specific_technical_competence.destroy
    respond_to do |format|
      format.html { redirect_to specific_technical_competences_url, notice: 'Specific technical competence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specific_technical_competence
      @specific_technical_competence = SpecificTechnicalCompetence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specific_technical_competence_params
      params.require(:specific_technical_competence).permit(:description)
    end
end
