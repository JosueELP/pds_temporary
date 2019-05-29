require "application_system_test_case"

class BillingInformationsTest < ApplicationSystemTestCase
  setup do
    @billing_information = billing_informations(:one)
  end

  test "visiting the index" do
    visit billing_informations_url
    assert_selector "h1", text: "Billing Informations"
  end

  test "creating a Billing information" do
    visit billing_informations_url
    click_on "New Billing Information"

    fill_in "Email", with: @billing_information.email
    fill_in "Rfc", with: @billing_information.rfc
    click_on "Create Billing information"

    assert_text "Billing information was successfully created"
    click_on "Back"
  end

  test "updating a Billing information" do
    visit billing_informations_url
    click_on "Edit", match: :first

    fill_in "Email", with: @billing_information.email
    fill_in "Rfc", with: @billing_information.rfc
    click_on "Update Billing information"

    assert_text "Billing information was successfully updated"
    click_on "Back"
  end

  test "destroying a Billing information" do
    visit billing_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Billing information was successfully destroyed"
  end
end
