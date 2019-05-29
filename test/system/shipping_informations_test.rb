require "application_system_test_case"

class ShippingInformationsTest < ApplicationSystemTestCase
  setup do
    @shipping_information = shipping_informations(:one)
  end

  test "visiting the index" do
    visit shipping_informations_url
    assert_selector "h1", text: "Shipping Informations"
  end

  test "creating a Shipping information" do
    visit shipping_informations_url
    click_on "New Shipping Information"

    fill_in "Aditional info", with: @shipping_information.aditional_info
    fill_in "Phone", with: @shipping_information.phone
    click_on "Create Shipping information"

    assert_text "Shipping information was successfully created"
    click_on "Back"
  end

  test "updating a Shipping information" do
    visit shipping_informations_url
    click_on "Edit", match: :first

    fill_in "Aditional info", with: @shipping_information.aditional_info
    fill_in "Phone", with: @shipping_information.phone
    click_on "Update Shipping information"

    assert_text "Shipping information was successfully updated"
    click_on "Back"
  end

  test "destroying a Shipping information" do
    visit shipping_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shipping information was successfully destroyed"
  end
end
