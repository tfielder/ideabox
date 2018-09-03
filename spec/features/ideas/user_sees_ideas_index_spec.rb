require 'rails_helper'

describe 'when a user goes to idea index' do
  describe 'a user sees a list of all user ideas' do
    it 'shows all ideas' do
      idea1 = Idea.create(title: "monster", image: "frankenstein", note: "great idea")
      idea2 = Idea.create(title: "bride", image: "bride of frankenstein", note: "grandiose")

      visit ideas_path

      expect(page).to have_content("#{idea1.title}")
      expect(page).to have_content("#{idea2.title}")
      expect(page).to have_content("#{idea1.note}")
      expect(page).to have_content("#{idea2.note}")
      expect(page).to have_link("Create a New Idea")
    end
  end
end