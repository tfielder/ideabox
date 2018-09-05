require 'rails_helper'
describe 'from idea index' do
  describe 'user clicks on edit idea' do
    it 'takes user to idea showpage' do
      idea1 = Idea.create(title: "monster", image: "frankenstein", note: "great idea")
      idea2 = Idea.create(title: "bride", image: "bride of frankenstein", note: "grandiose")

      visit ideas_path

      first('.deletion').click_link 'Edit'

      expect(current_path).to eq(edit_idea_path(idea1))
    end
  end
  describe 'user navigates to fill out idea edit form' do
    it 'fills in edit form to update idea' do
      idea1 = Idea.create(title: "monster", image: "frankenstein", note: "great idea")
      idea2 = Idea.create(title: "bride", image: "bride of frankenstein", note: "grandiose")

      visit ideas_path

      first('.deletion').click_link 'Edit'

      expect(current_path).to eq(edit_idea_path(idea1))
      fill_in "idea[title]", with: "Cool"
      fill_in "idea[image]", with: "Image"
      fill_in "idea[note]", with: "Sospecial"

      click_on "Update Idea"

      expect(current_path).to eq(ideas_path)
      expect(page).to have_content("Cool")
      expect(page).to have_content("Sospecial")
    end
  end
end