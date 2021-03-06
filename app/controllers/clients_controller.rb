class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
    @clients = Client.all
  end

  # GET /clients/new
  def new
    @client = Client.new
    @address = Address.all
    @shipping = ShippingInformation.all
    @billing = BillingInformation.all
  end

  # GET /clients/1/edit
  def edit
    @address = Address.all
    @shipping = ShippingInformation.all
    @billing = BillingInformation.all
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)
    @address = Address.all
    @shipping = ShippingInformation.all
    @billing = BillingInformation.all
    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'El cliente se guardó correctamente.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    @address = Address.all
    @shipping = ShippingInformation.all
    @billing = BillingInformation.all
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'El cliente se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'El cliente se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:client_name, :client_lastname, :address_id, :billing_information_id, :shipping_information_id)
    end
end
