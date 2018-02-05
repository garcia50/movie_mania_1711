require 'rails_helper'

describe "As a user" do
  describe "when I visit new" do
    it "they can create a director" do
      visit '/directors/new'

      fill_in "director[name]", with: "Copola"

      expect(page).to have_content("Copola")
    end
  end

end