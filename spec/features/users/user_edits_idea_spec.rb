require 'rails_helper'
describe 'from idea index' do
  describe 'user clicks on edit idea' do
    it 'takes user to idea showpage' do

      user1 = User.create(username: "Job", password: "pass")

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user1)

      idea1 = user1.ideas.create(title: "monster", image: "frankenstein", note: "great idea")
      idea2 = user1.ideas.create(title: "bride", image: "bride of frankenstein", note: "grandiose")

      visit user_path(user1)

      first('.modify').click_on 'Edit'

      expect(current_path).to eq(edit_user_idea_path(user1, idea1))
    end
  end
  describe 'user navigates to fill out idea edit form' do
    it 'fills in edit form to update idea' do
      user1 = User.create(username: "Job", password: "pass")

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user1)

      idea1 = user1.ideas.create(title: "monster", image: "frankenstein", note: "great idea")
      idea2 = user1.ideas.create(title: "bride", image: "bride of frankenstein", note: "grandiose")

      visit user_path(user1)

      first('.modify').click_link 'Edit'

      expect(current_path).to eq(edit_user_idea_path(user1, idea1))
      fill_in "idea[title]", with: "Cool"
      # fill_in "idea[image]", with: "Image"
      fill_in "idea[note]", with: "Sospecial"

      click_on "Update Idea"

      expect(current_path).to eq(user_path(user1))
      expect(page).to have_content("Cool")
      expect(page).to have_content("Sospecial")
    end
  end
end