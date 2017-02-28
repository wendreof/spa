class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]
  before_action :set_evidences, only: [:edit]
  before_action :set_verbs, only: [:edit]
  before_action :set_strategies, only: [:edit]
  before_action :set_teacher_id, only: [:index]

  # GET /meetings
  # GET /meetings.json
  def index
    @meetings = Meeting.all
  end

  # GET /meetings/1
  # GET /meetings/1.json
  def show
  end

  # GET /meetings/new
  def new
    @meeting = Meeting.new
    @meeting.plane_classroom_id = params[:plane_classroom_id]
    @meeting.meeting_attitudinal_skills.build
    @meeting.meeting_strategies.build
    @meeting.meeting_resources.build

    @activities = Activity.where(teacher_id: Teacher.where(email: current_user.email).first.id)

    set_evidences
    set_verbs
    set_strategies
    set_generating_themes

  end

  # GET /meetings/1/edit
  def edit
    set_generating_themes
    @relationship_activities = Activity.joins(:relationships).where(
      "relationships.specific_skill_id" => @meeting.specific_skill_id,
      "relationships.attitudinal_skill_id" => @meeting.attitudinal_skill_ids,
      "relationships.category_id" => @meeting.category_id
      )
    @activities = (@relationship_activities + @meeting.activities.order(:description) + Activity.where(teacher_id: Teacher.where(email: current_user.email).first.id)).uniq
  end

  # POST /meetings
  # POST /meetings.json
  def create
    @meeting = Meeting.new(meeting_params)

    respond_to do |format|
      if @meeting.save
        format.html { redirect_to "/plane_classrooms/#{@meeting.plane_classroom_id}/edit?active=meetings", notice: 'Meeting was successfully created.' }
        format.json { render :show, status: :created, location: @meeting }
      else
        format.html { render :new }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meetings/1
  # PATCH/PUT /meetings/1.json
  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to "/plane_classrooms/#{@meeting.plane_classroom_id}/edit?active=meetings", notice: 'Meeting was successfully updated.' }
        format.json { render :show, status: :ok, location: @meeting }
      else
        format.html { render :edit }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/1
  # DELETE /meetings/1.json
  def destroy
    @meeting.destroy
    respond_to do |format|
      format.html { redirect_to "/plane_classrooms/#{@meeting.plane_classroom_id}/edit?active=meetings", notice: 'Meeting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_params
      params.require(:meeting).permit(:name, :plane_classroom_id, :generating_theme_id, :workload, :specific_skill_id, :category_id, :know_more, :technical_skill, :attitudinal_skill_ids => [], :evidence_ids => [], :verb_ids => [], :methodology_ids => [], :activity_ids => [], :strategy_ids => [], :resource_ids => [])
    end

    def set_evidences
      @evidences = Evidence.where(attitudinal_skill_id: @meeting.attitudinal_skills)
    end

    def set_verbs
      @verbs = Verb.where(category_id: @meeting.category_id)
    end

    def set_strategies
      @strategies = Strategy.where(category_id: @meeting.category_id)
    end

    def set_teacher_id
      @teacher_id = nil
      @teacher = Teacher.where(email: current_user.email).first

      unless @teacher.nil?
        @teacher_id = @teacher.id
      end

    end

    def set_generating_themes
      @generating_themes = GeneratingTheme.where('teacher_id = ? or teacher_id is null', Teacher.where(email: current_user.email).first.id)
    end




end
