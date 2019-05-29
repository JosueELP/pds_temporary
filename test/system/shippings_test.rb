require "application_system_test_case"

class ShippingsTest < ApplicationSystemTestCase
  setup do
    @shipping = shippings(:one)
  end

  test "visiting the index" do
    visit shippings_url
    assert_selector "h1", text: "Shippings"
  end

  test "creating a Shipping" do
    visit shippings_url
    click_on "New Shipping"

    fill_in "Authorization sign", with: @shipping.authorization_sign
    fill_in "Delivery cost", with: @shipping.delivery_cost
    fill_in "Delivery date", with: @shipping.delivery_date
    fill_in "Delivery sign", with: @shipping.delivery_sign
    fill_in "Expedition date", with: @shipping.expedition_date
    fill_in "Final cost", with: @shipping.final_cost
    fill_in "Insurance cost", with: @shipping.insurance_cost
    fill_in "Package number", with: @shipping.package_number
    fill_in "Pick up cost", with: @shipping.pick_up_cost
    fill_in "Taxes", with: @shipping.taxes
    fill_in "Type", with: @shipping.type
    click_on "Create Shipping"

    assert_text "Shipping was successfully created"
    click_on "Back"
  end

  test "updating a Shipping" do
    visit shippings_url
    click_on "Edit", match: :first

    fill_in "Authorization sign", with: @shipping.authorization_sign
    fill_in "Delivery cost", with: @shipping.delivery_cost
    fill_in "Delivery date", with: @shipping.delivery_date
    fill_in "Delivery sign", with: @shipping.delivery_sign
    fill_in "Expedition date", with: @shipping.expedition_date
    fill_in "Final cost", with: @shipping.final_cost
    fill_in "Insurance cost", with: @shipping.insurance_cost
    fill_in "Package number", with: @shipping.package_number
    fill_in "Pick up cost", with: @shipping.pick_up_cost
    fill_in "Taxes", with: @shipping.taxes
    fill_in "Type", with: @shipping.type
    click_on "Update Shipping"

    assert_text "Shipping was successfully updated"
    click_on "Back"
  end

  test "destroying a Shipping" do
    visit shippings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shipping was successfully destroyed"
  end
end
