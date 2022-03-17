require "application_system_test_case"

class ShowTimesTest < ApplicationSystemTestCase
  setup do
    @show_time = show_times(:one)
  end

  test "visiting the index" do
    visit show_times_url
    assert_selector "h1", text: "Show times"
  end

  test "should create show time" do
    visit show_times_url
    click_on "New show time"

    fill_in "Movie", with: @show_time.movie_id
    fill_in "Show date and time", with: @show_time.show_date_and_time
    fill_in "Sold seats", with: @show_time.sold_seats
    fill_in "Ticket price", with: @show_time.ticket_price
    fill_in "Total seats", with: @show_time.total_seats
    click_on "Create Show time"

    assert_text "Show time was successfully created"
    click_on "Back"
  end

  test "should update Show time" do
    visit show_time_url(@show_time)
    click_on "Edit this show time", match: :first

    fill_in "Movie", with: @show_time.movie_id
    fill_in "Show date and time", with: @show_time.show_date_and_time
    fill_in "Sold seats", with: @show_time.sold_seats
    fill_in "Ticket price", with: @show_time.ticket_price
    fill_in "Total seats", with: @show_time.total_seats
    click_on "Update Show time"

    assert_text "Show time was successfully updated"
    click_on "Back"
  end

  test "should destroy Show time" do
    visit show_time_url(@show_time)
    click_on "Destroy this show time", match: :first

    assert_text "Show time was successfully destroyed"
  end
end
