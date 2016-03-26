class Api::V1::SheetManagersController < ApplicationController
  before_action :set_sheet_manager, only: [:show, :update, :destroy]

  # GET /sheet_managers
  def index
    @sheet_managers = SheetManager.all

    render json: @sheet_managers
  end

  # GET /sheet_managers/1
  def show
    render json: @sheet_manager
  end

  # POST /sheet_managers
  def create
    @sheet_manager = SheetManager.new(sheet_manager_params)

    if @sheet_manager.save
      render json: @sheet_manager, status: :created
    else
      render json: @sheet_manager.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sheet_managers/1
  def update
    if @sheet_manager.update(sheet_manager_params)
      render json: @sheet_manager
    else
      render json: @sheet_manager.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sheet_managers/1
  def destroy
    @sheet_manager.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sheet_manager
      @sheet_manager = SheetManager.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sheet_manager_params
      params.require(:sheet_manager).permit(:sheet_id, :year)
    end
end
