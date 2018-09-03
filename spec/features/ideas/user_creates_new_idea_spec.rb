require 'rails_helper'

describe 'on create new idea page' do
  describe 'user creates a new idea' do
    it "can fill in a idea" do
      visit ideas_path
      click_link 'Create a New Idea'

      expect(current_path).to eq(new_idea_path)

      fill_in "idea[title]", with: "Shazam"
      fill_in "idea[image]", with: "Shazoo"
      fill_in "idea[note]", with: "Shazah"

      click_on "Create Idea"

      expect(page).to have_content("Shazam")
      expect(page).to have_content("Shazah")
    end
  end
end