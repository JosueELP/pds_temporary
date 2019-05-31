class LoadsController < ApplicationController
  before_action :set_load, only: [:show, :edit, :update, :destroy]

  # GET /loads
  # GET /loads.json
  def index
    @loads = Load.all
  end

  # GET /loads/1
  # GET /loads/1.json
  def show
  end

  # GET /loads/new
  def new
    @load = Load.new
    @client=Client.all
    @branch_office=BranchOffice.all
    @worker=Worker.all
    @vehicle=Vehicle.all
  end

  # GET /loads/1/edit
  def edit
    @load = Load.new
    @client=Client.all
    @branch_office=BranchOffice.all
    @worker=Worker.all
    @vehicle=Vehicle.all
  end

  # POST /loads
  # POST /loads.json
  def create
    @load = Load.new(load_params)
    @client=Client.all
    @branch_office=BranchOffice.all
    @worker=Worker.all
    @vehicle=Vehicle.all
    respond_to do |format|
      if @load.save
        format.html { redirect_to @load, notice: 'La carga se guardó correctamente.' }
        format.json { render :show, status: :created, location: @load }
      else
        format.html { render :new }
        format.json { render json: @load.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loads/1
  # PATCH/PUT /loads/1.json
  def update
    @load = Load.new
    @client=Client.all
    @branch_office=BranchOffice.all
    @worker=Worker.all
    @vehicle=Vehicle.all
    respond_to do |format|
      if @load.update(load_params)
        format.html { redirect_to @load, notice: 'La carga se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @load }
      else
        format.html { render :edit }
        format.json { render json: @load.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loads/1
  # DELETE /loads/1.json
  def destroy
    @load.destroy
    respond_to do |format|
      format.html { redirect_to loads_url, notice: 'La carga se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_load
      @load = Load.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def load_params
      params.require(:load).permit(:load_date, :branch_office_id, :export_branch_office_id, :worker_id, :vehicle_id)
    end
end
