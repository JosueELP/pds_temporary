class PickUpsController < ApplicationController
  before_action :set_pick_up, only: [:show, :edit, :update, :destroy]

  # GET /pick_ups
  # GET /pick_ups.json
  def index
    @pick_ups = PickUp.all
  end

  # GET /pick_ups/1
  # GET /pick_ups/1.json
  def show
  end

  # GET /pick_ups/new
  def new
    @pick_up = PickUp.new
    @address=Address.all
    @client=Client.all
    @branch_office=BranchOffice.all
  end

  # GET /pick_ups/1/edit
  def edit
    @address=Address.all
    @client=Client.all
    @branch_office=BranchOffice.all
  end

  # POST /pick_ups
  # POST /pick_ups.json
  def create
    @pick_up = PickUp.new(pick_up_params)
    @address=Address.all
    @client=Client.all
    @branch_office=BranchOffice.all
    respond_to do |format|
      if @pick_up.save
        format.html { redirect_to @pick_up, notice: 'La recolección se guardó correctamente.' }
        format.json { render :show, status: :created, location: @pick_up }
      else
        format.html { render :new }
        format.json { render json: @pick_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pick_ups/1
  # PATCH/PUT /pick_ups/1.json
  def update
    @address=Address.all
    @client=Client.all
    @branch_office=BranchOffice.all
    respond_to do |format|
      if @pick_up.update(pick_up_params)
        format.html { redirect_to @pick_up, notice: 'La recolección se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @pick_up }
      else
        format.html { render :edit }
        format.json { render json: @pick_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pick_ups/1
  # DELETE /pick_ups/1.json
  def destroy
    @pick_up.destroy
    respond_to do |format|
      format.html { redirect_to pick_ups_url, notice: 'La recolección se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pick_up
      @pick_up = PickUp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pick_up_params
      params.require(:pick_up).permit(:is_done, :schedule, :client_id, :address_id, :branch_office_id)
    end
end
