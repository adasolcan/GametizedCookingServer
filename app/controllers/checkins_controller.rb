class CheckinsController < ApplicationController
  before_action :set_checkin, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /checkins
  # GET /checkins.json
  def index
    @checkins = Checkin.all
    respond_with @checkins
  end

  # GET /checkins/1
  # GET /checkins/1.json
  def show
    @checkin = Checkin.find(params[:id])
    respond_with @checkin
  end

  # GET /checkins/new
  def new
    @checkin = Checkin.new
    respond_with @checkin
  end

  # GET /checkins/1/edit
  def edit
    @checkin = Checkin.find(params[:id])  
    respond_with @checkin
  end

  # POST /checkins
  # POST /checkins.json
  def create
    @checkin = Checkin.new(checkin_params)
    @checkin.save
    respond_with @checkin
  end

  # PATCH/PUT /checkins/1
  # PATCH/PUT /checkins/1.json
  def update
    @checkin.update(checkin_params)
    respond_with @checkin
  end

  # DELETE /checkins/1
  # DELETE /checkins/1.json
  def destroy
    @checkin.destroy
    respond_with @checkin
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkin
      @checkin = Checkin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checkin_params
      params.require(:checkin).permit(:description, :date_time, :picture, :user_id, :recipe_id)
    end
end