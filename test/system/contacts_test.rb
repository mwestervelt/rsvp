require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "creating a Contact" do
    visit contacts_url
    click_on "New Contact"

    fill_in "Attending", with: @contact.attending
    fill_in "Email", with: @contact.email
    fill_in "Guest name", with: @contact.guest_name
    fill_in "Name", with: @contact.name
    fill_in "Song request", with: @contact.song_request
    fill_in "With guest", with: @contact.with_guest
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "updating a Contact" do
    visit contacts_url
    click_on "Edit", match: :first

    fill_in "Attending", with: @contact.attending
    fill_in "Email", with: @contact.email
    fill_in "Guest name", with: @contact.guest_name
    fill_in "Name", with: @contact.name
    fill_in "Song request", with: @contact.song_request
    fill_in "With guest", with: @contact.with_guest
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact" do
    visit contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact was successfully destroyed"
  end
end
