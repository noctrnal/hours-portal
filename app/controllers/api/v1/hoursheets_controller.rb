class Api::V1::HoursheetsController < ApplicationController
  before_action :set_hoursheet, only: [:show, :update, :destroy]

  # GET /hoursheets
  def index
    @hoursheets = Hoursheet.all

    render json: @hoursheets
  end

  # GET /hoursheets/1
  def show
    render json: @hoursheet
  end

  # POST /hoursheets
  def create
    @hoursheet = Hoursheet.new(hoursheet_params)

    if @hoursheet.save
      render json: @hoursheet, status: :created
    else
      render json: @hoursheet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hoursheets/1
  def update
    if @hoursheet.update(hoursheet_params)
      render json: @hoursheet
    else
      render json: @hoursheet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hoursheets/1
  def destroy
    @hoursheet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hoursheet
      @hoursheet = Hoursheet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hoursheet_params
      params.require(:hoursheet).permit(:user_id, :month, :year, :sheet_id)
    end
end
