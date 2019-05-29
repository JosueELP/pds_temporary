require 'test_helper'

class ShippingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipping = shippings(:one)
  end

  test "should get index" do
    get shippings_url
    assert_response :success
  end

  test "should get new" do
    get new_shipping_url
    assert_response :success
  end

  test "should create shipping" do
    assert_difference('Shipping.count') do
      post shippings_url, params: { shipping: { authorization_sign: @shipping.authorization_sign, delivery_cost: @shipping.delivery_cost, delivery_date: @shipping.delivery_date, delivery_sign: @shipping.delivery_sign, expedition_date: @shipping.expedition_date, final_cost: @shipping.final_cost, insurance_cost: @shipping.insurance_cost, package_number: @shipping.package_number, pick_up_cost: @shipping.pick_up_cost, taxes: @shipping.taxes, type: @shipping.type } }
    end

    assert_redirected_to shipping_url(Shipping.last)
  end

  test "should show shipping" do
    get shipping_url(@shipping)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipping_url(@shipping)
    assert_response :success
  end

  test "should update shipping" do
    patch shipping_url(@shipping), params: { shipping: { authorization_sign: @shipping.authorization_sign, delivery_cost: @shipping.delivery_cost, delivery_date: @shipping.delivery_date, delivery_sign: @shipping.delivery_sign, expedition_date: @shipping.expedition_date, final_cost: @shipping.final_cost, insurance_cost: @shipping.insurance_cost, package_number: @shipping.package_number, pick_up_cost: @shipping.pick_up_cost, taxes: @shipping.taxes, type: @shipping.type } }
    assert_redirected_to shipping_url(@shipping)
  end

  test "should destroy shipping" do
    assert_difference('Shipping.count', -1) do
      delete shipping_url(@shipping)
    end

    assert_redirected_to shippings_url
  end
end
