class ShippingsController < ApplicationController
  before_action :set_shipping, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_worker!

  # GET /shippings
  # GET /shippings.json
  def index
    @shippings = Shipping.all

  end

  # GET /shippings/1
  # GET /shippings/1.json
  def show
    @shippings = Shipping.all
  end

  # GET /shippings/new
  def new
    @shipping = Shipping.new
    @clients = Client.all
    @addresses = Address.all
    @payment_methods = PaymentMethod.all
    @statuses = Status.all
    @branch_offices = BranchOffice.all

    @branch_office = BranchOffice.all
    @worker=Worker.all
  end

  # GET /shippings/1/edit
  def edit
    @shipping = Shipping.new
    @clients = Client.all
    @addresses = Address.all
    @payment_methods = PaymentMethod.all
    @statuses = Status.all
    @branch_offices = BranchOffice.all

    @branch_office = BranchOffice.all
    @worker=Worker.all

  end

  # POST /shippings
  # POST /shippings.json
  def create
    @shipping = Shipping.new(shipping_params)
    @clients = Client.all
    @addresses = Address.all
    @payment_methods = PaymentMethod.all
    @statuses = Status.all
    @branch_offices = BranchOffice.all
    @branch_office = BranchOffice.all

    @worker=Worker.all
    respond_to do |format|
      if @shipping.save
        format.html { redirect_to @shipping, notice: 'El envío se guardó correctamente' }
        format.json { render :show, status: :created, location: @shipping }
      else
        format.html { render :new }
        format.json { render json: @shipping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shippings/1
  # PATCH/PUT /shippings/1.json
  def update
    @shipping = Shipping.new
    @clients = Client.all
    @addresses = Address.all
    @payment_methods = PaymentMethod.all
    @statuses = Status.all
    @branch_offices = BranchOffice.all

    @branch_office = BranchOffice.all
    @worker=Worker.all
    respond_to do |format|
      if @shipping.update(shipping_params)
        format.html { redirect_to @shipping, notice: 'El envío se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @shipping }
      else
        format.html { render :edit }
        format.json { render json: @shipping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shippings/1
  # DELETE /shippings/1.json
  def destroy
    @shipping.destroy
    respond_to do |format|
      format.html { redirect_to shippings_url, notice: 'El registro se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipping
      @shipping = Shipping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shipping_params
      params.require(:shipping).permit(:expedition_date, :delivery_date, :ship_type, :authorization_sign, :delivery_sign, :package_number, :delivery_cost, :insurance_cost, :pick_up_cost, :taxes, :final_cost, :sender_client_id, :adressee_client_id, :address_id, :payment_method_id, :status_id, :expedition_branch_office_id, :delivery_branch_office_id, :worker_id)
    end
end
