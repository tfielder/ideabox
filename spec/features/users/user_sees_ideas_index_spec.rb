require 'rails_helper'

describe 'when a user goes to idea index' do
  describe 'a user sees a list of all user ideas' do
    it 'shows all ideas' do
      user1 = User.create(username: "Job", password: "pass")

      category = "Student"

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user1)

      idea1 = user1.ideas.create(title: "monster", image: "frankenstein", note: "great idea")
      idea2 = user1.ideas.create(title: "bride", image: "bride of frankenstein", note: "grandiose")
  
      visit user_path(user1)

      expect(page).to have_content("#{idea1.title}")
      expect(page).to have_content("#{idea2.title}")
      expect(page).to have_content("#{idea1.note}")
      expect(page).to have_content("#{idea2.note}")
      expect(page).to have_link("Create a New Idea")
    end
  end
end