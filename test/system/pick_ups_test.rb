require "application_system_test_case"

class PickUpsTest < ApplicationSystemTestCase
  setup do
    @pick_up = pick_ups(:one)
  end

  test "visiting the index" do
    visit pick_ups_url
    assert_selector "h1", text: "Pick Ups"
  end

  test "creating a Pick up" do
    visit pick_ups_url
    click_on "New Pick Up"

    fill_in "Is done", with: @pick_up.is_done
    fill_in "Schedule", with: @pick_up.schedule
    click_on "Create Pick up"

    assert_text "Pick up was successfully created"
    click_on "Back"
  end

  test "updating a Pick up" do
    visit pick_ups_url
    click_on "Edit", match: :first

    fill_in "Is done", with: @pick_up.is_done
    fill_in "Schedule", with: @pick_up.schedule
    click_on "Update Pick up"

    assert_text "Pick up was successfully updated"
    click_on "Back"
  end

  test "destroying a Pick up" do
    visit pick_ups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pick up was successfully destroyed"
  end
end
