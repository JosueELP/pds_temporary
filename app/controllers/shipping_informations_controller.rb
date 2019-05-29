class ShippingInformationsController < ApplicationController
  before_action :set_shipping_information, only: [:show, :edit, :update, :destroy]

  # GET /shipping_informations
  # GET /shipping_informations.json
  def index
    @shipping_informations = ShippingInformation.all
  end

  # GET /shipping_informations/1
  # GET /shipping_informations/1.json
  def show
  end

  # GET /shipping_informations/new
  def new
    @shipping_information = ShippingInformation.new
  end

  # GET /shipping_informations/1/edit
  def edit
  end

  # POST /shipping_informations
  # POST /shipping_informations.json
  def create
    @shipping_information = ShippingInformation.new(shipping_information_params)

    respond_to do |format|
      if @shipping_information.save
        format.html { redirect_to @shipping_information, notice: 'Shipping information was successfully created.' }
        format.json { render :show, status: :created, location: @shipping_information }
      else
        format.html { render :new }
        format.json { render json: @shipping_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipping_informations/1
  # PATCH/PUT /shipping_informations/1.json
  def update
    respond_to do |format|
      if @shipping_information.update(shipping_information_params)
        format.html { redirect_to @shipping_information, notice: 'Shipping information was successfully updated.' }
        format.json { render :show, status: :ok, location: @shipping_information }
      else
        format.html { render :edit }
        format.json { render json: @shipping_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipping_informations/1
  # DELETE /shipping_informations/1.json
  def destroy
    @shipping_information.destroy
    respond_to do |format|
      format.html { redirect_to shipping_informations_url, notice: 'Shipping information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipping_information
      @shipping_information = ShippingInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shipping_information_params
      params.require(:shipping_information).permit(:phone, :aditional_info)
    end
end
