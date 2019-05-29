require 'test_helper'

class ShippingInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipping_information = shipping_informations(:one)
  end

  test "should get index" do
    get shipping_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_shipping_information_url
    assert_response :success
  end

  test "should create shipping_information" do
    assert_difference('ShippingInformation.count') do
      post shipping_informations_url, params: { shipping_information: { aditional_info: @shipping_information.aditional_info, phone: @shipping_information.phone } }
    end

    assert_redirected_to shipping_information_url(ShippingInformation.last)
  end

  test "should show shipping_information" do
    get shipping_information_url(@shipping_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipping_information_url(@shipping_information)
    assert_response :success
  end

  test "should update shipping_information" do
    patch shipping_information_url(@shipping_information), params: { shipping_information: { aditional_info: @shipping_information.aditional_info, phone: @shipping_information.phone } }
    assert_redirected_to shipping_information_url(@shipping_information)
  end

  test "should destroy shipping_information" do
    assert_difference('ShippingInformation.count', -1) do
      delete shipping_information_url(@shipping_information)
    end

    assert_redirected_to shipping_informations_url
  end
end
