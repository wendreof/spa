class ActivitySugestionsController < ApplicationController
  before_action :set_activity_sugestion, only: [:show, :edit, :update, :destroy]

  # GET /activity_sugestions
  # GET /activity_sugestions.json
  def index
    @activity_sugestions = ActivitySugestion.all
  end

  # GET /activity_sugestions/1
  # GET /activity_sugestions/1.json
  def show
  end

  # GET /activity_sugestions/new
  def new
    @activity_sugestion = ActivitySugestion.new
  end

  # GET /activity_sugestions/1/edit
  def edit
  end

  # POST /activity_sugestions
  # POST /activity_sugestions.json
  def create
    @activity_sugestion = ActivitySugestion.new(activity_sugestion_params)

    respond_to do |format|
      if @activity_sugestion.save
        format.html { redirect_to @activity_sugestion, notice: 'Activity sugestion was successfully created.' }
        format.json { render :show, status: :created, location: @activity_sugestion }
      else
        format.html { render :new }
        format.json { render json: @activity_sugestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_sugestions/1
  # PATCH/PUT /activity_sugestions/1.json
  def update
    respond_to do |format|
      if @activity_sugestion.update(activity_sugestion_params)
        format.html { redirect_to @activity_sugestion, notice: 'Activity sugestion was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_sugestion }
      else
        format.html { render :edit }
        format.json { render json: @activity_sugestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_sugestions/1
  # DELETE /activity_sugestions/1.json
  def destroy
    @activity_sugestion.destroy
    respond_to do |format|
      format.html { redirect_to activity_sugestions_url, notice: 'Activity sugestion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_sugestion
      @activity_sugestion = ActivitySugestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_sugestion_params
      params.require(:activity_sugestion).permit(:description)
    end
end
