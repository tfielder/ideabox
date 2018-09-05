require 'rails_helper'

describe 'on idea index page' do
  describe 'user clicks on delete next to idea' do
    it 'deletes an idea' do
      user1 = User.create(username: "Job", password: "pass")

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user1)

      idea1 = user1.ideas.create(title: "monster", image: "frankenstein", note: "great idea")
      idea2 = user1.ideas.create(title: "bride", image: "bride of frankenstein", note: "grandiose")

      visit user_path(user1)

      first('.deletion').click_on("Delete")

      expect(current_path).to eq (user_path(user1))
      expect(page).to have_content("#{idea2.title}")
      expect(page).not_to have_content("#{idea1.title}")
      expect(page).to have_content("#{idea2.note}")
      expect(page).not_to have_content("#{idea1.note}")

    end
  end
end