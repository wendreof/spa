class SpecificSkillsController < ApplicationController
  before_action :set_specific_skill, only: [:show, :edit, :update, :destroy]

  # GET /specific_skills
  # GET /specific_skills.json
  def index
    @specific_skills = SpecificSkill.all
  end

  # GET /specific_skills/1
  # GET /specific_skills/1.json
  def show
  end

  # GET /specific_skills/new
  def new
    @specific_skill = SpecificSkill.new
  end

  # GET /specific_skills/1/edit
  def edit
  end

  # POST /specific_skills
  # POST /specific_skills.json
  def create
    @specific_skill = SpecificSkill.new(specific_skill_params)

    respond_to do |format|
      if @specific_skill.save
        format.html { redirect_to specific_skills_url, notice: 'Specific skill was successfully created.' }
        format.json { render :show, status: :created, location: @specific_skill }
      else
        format.html { render :new }
        format.json { render json: @specific_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specific_skills/1
  # PATCH/PUT /specific_skills/1.json
  def update
    respond_to do |format|
      if @specific_skill.update(specific_skill_params)
        format.html { redirect_to specific_skills_url, notice: 'Specific skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @specific_skill }
      else
        format.html { render :edit }
        format.json { render json: @specific_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specific_skills/1
  # DELETE /specific_skills/1.json
  def destroy
    @specific_skill.destroy
    respond_to do |format|
      format.html { redirect_to specific_skills_url, notice: 'Specific skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specific_skill
      @specific_skill = SpecificSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specific_skill_params
      params.require(:specific_skill).permit(:description)
    end
end
