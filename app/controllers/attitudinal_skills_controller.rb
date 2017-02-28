class AttitudinalSkillsController < ApplicationController
  before_action :set_attitudinal_skill, only: [:show, :edit, :update, :destroy]

  # GET /attitudinal_skills
  # GET /attitudinal_skills.json
  def index
    @attitudinal_skills = AttitudinalSkill.all
  end

  # GET /attitudinal_skills/1
  # GET /attitudinal_skills/1.json
  def show
  end

  # GET /attitudinal_skills/new
  def new
    @attitudinal_skill = AttitudinalSkill.new
  end

  # GET /attitudinal_skills/1/edit
  def edit
  end

  # POST /attitudinal_skills
  # POST /attitudinal_skills.json
  def create
    @attitudinal_skill = AttitudinalSkill.new(attitudinal_skill_params)

    respond_to do |format|
      if @attitudinal_skill.save
        format.html { redirect_to attitudinal_skills_url, notice: 'Attitudinal skill was successfully created.' }
        format.json { render :show, status: :created, location: @attitudinal_skill }
      else
        format.html { render :new }
        format.json { render json: @attitudinal_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attitudinal_skills/1
  # PATCH/PUT /attitudinal_skills/1.json
  def update
    respond_to do |format|
      if @attitudinal_skill.update(attitudinal_skill_params)
        format.html { redirect_to attitudinal_skills_url, notice: 'Attitudinal skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @attitudinal_skill }
      else
        format.html { render :edit }
        format.json { render json: @attitudinal_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attitudinal_skills/1
  # DELETE /attitudinal_skills/1.json
  def destroy
    @attitudinal_skill.destroy
    respond_to do |format|
      format.html { redirect_to attitudinal_skills_url, notice: 'Attitudinal skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attitudinal_skill
      @attitudinal_skill = AttitudinalSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attitudinal_skill_params
      params.require(:attitudinal_skill).permit(:tipo, :Description, :evidence_one, :evidence_two, :evidence_three)
    end
end
