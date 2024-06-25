require "application_system_test_case"

class CardsTest < ApplicationSystemTestCase
  setup do
    @card = cards(:one)
  end

  test "visiting the index" do
    visit cards_url
    assert_selector "h1", text: "Cards"
  end

  test "should create card" do
    visit cards_url
    click_on "New card"

    fill_in "Descriptive hint", with: @card.descriptive_hint
    fill_in "Forbidden words", with: @card.forbidden_words
    fill_in "Guess action", with: @card.guess_action
    fill_in "Is explicit", with: @card.is_explicit
    fill_in "Times played", with: @card.times_played
    click_on "Create Card"

    assert_text "Card was successfully created"
    click_on "Back"
  end

  test "should update Card" do
    visit card_url(@card)
    click_on "Edit this card", match: :first

    fill_in "Descriptive hint", with: @card.descriptive_hint
    fill_in "Forbidden words", with: @card.forbidden_words
    fill_in "Guess action", with: @card.guess_action
    fill_in "Is explicit", with: @card.is_explicit
    fill_in "Times played", with: @card.times_played
    click_on "Update Card"

    assert_text "Card was successfully updated"
    click_on "Back"
  end

  test "should destroy Card" do
    visit card_url(@card)
    click_on "Destroy this card", match: :first

    assert_text "Card was successfully destroyed"
  end
end
